//
//  RequestSession.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 11.11.20.
//

import Foundation
import os.log

class RequestSession: NSObject {

    public var session: URLSession?
    private var sem: DispatchSemaphore?
    public var jsonObjectResult: JSONObject?
    private var receivedJsonObjectDelegate: ((JSONObject?)->())?
    var receivedData: Data?

    
    let urlSessionConfiguration: URLSessionConfiguration = {
        let identifier = AppDefaultConfiguration.backgroundURLSessionIdentifier + String(DispatchTime.now().rawValue)
        let configuration = URLSessionConfiguration.background(withIdentifier: identifier)
        configuration.sessionSendsLaunchEvents = false
        configuration.sharedContainerIdentifier = AppDefaultConfiguration.containerSharedGroup
        configuration.urlCache = nil
        return configuration
    }()


    deinit {
        Logger.funcStart.notice("deinit")
        self.session?.invalidateAndCancel()
        self.session = nil
        self.receivedData = nil
    }


    public func StartTaskAndWait(_ request: URLRequest) -> Bool {
        Logger.funcStart.notice("StartTaskAndWait")

        var result: Bool = false

        self.receivedData = Data()

        let sessionConfiguration = self.urlSessionConfiguration
        self.session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: nil)

        // initialize Semaphore.
        self.sem = DispatchSemaphore.init(value: 0)

        // Send a task
        if let task = self.session?.dataTask(with: request) {
            // start the task, tasks are not started by default
            task.resume()
        }

        // Create a TimeOut
        let timeOutInSeconds = DispatchTime.now() + DispatchTimeInterval.seconds(1 * 30) // Waits for 30 seconds.

        // And wait.
        let timeOutResult = self.sem!.wait(timeout: timeOutInSeconds)

        // Invalidate Session.
        self.session?.finishTasksAndInvalidate()
        self.session = nil

        // Handle Timeouts
        if timeOutResult == .timedOut {
            Logger.log.error("TimeOut on request.")
            result = false
        } else {
            Logger.log.notice("Request OK.")
            result = true
        }

        return result
    }
    
    
//    public func StartTaskAsync(_ request: URLRequest, receivedJsonObject: @escaping (JSONObject?)->()) {
//        Logger.funcStart.notice("StartTaskAndWait")
//
//        self.receivedData = Data()
//
//        let sessionConfiguration = self.urlSessionConfiguration
//        self.session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: nil)
//
//        self.receivedJsonObjectDelegate = receivedJsonObject
//
//        // Send a task
//        if let task = self.session?.dataTask(with: request) {
//            // start the task, tasks are not started by default
//            task.resume()
//        }
//    }
    
    
//    private func WaitForResult() -> DispatchTimeoutResult {
//        let timeOutInSeconds = DispatchTime.now() + DispatchTimeInterval.seconds(1 * 30) // Waits for 30 seconds.
//        while DispatchTime.now() <= timeOutInSeconds {
//            if let jObjectResult = self.jsonObjectResult {
//                if jObjectResult.isEmpty == false {
//                    print("Got result")
//                    return .success
//                }
//            }
//            sleep(1)
//            print("Waiting ... " + DispatchTime.now().rawValue.description)
//        }
//        return .timedOut
//    }
}



extension RequestSession: URLSessionDelegate {

    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        // We've got a URLAuthenticationChallenge - we simply trust the HTTPS server and we proceed
        Logger.funcStart.notice("URLSessionDelegate->urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)")
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }

    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) {
        Logger.funcStart.notice("URLSessionDelegate->urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)")
        // We've got an error
        if let err = error {
            Logger.log.error("Error: \(err.localizedDescription)")
        }
    }

    // TODO: Do I need that?
//    func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) {
//        Logger.funcStart.notice("URLSessionDelegate->urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)")
//        DispatchQueue.main.async {
//            if let appDelegate = UIApplication.shared.delegate as? AppDelegate, let completionHandler = appDelegate.backgroundSessionCompletionHandler {
//              appDelegate.backgroundSessionCompletionHandler = nil
//              completionHandler()
//            }
//        }
//    }
}


extension RequestSession: URLSessionDataDelegate {

    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome streamTask: URLSessionStreamTask) {
        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome streamTask: URLSessionStreamTask)")
        //print("didBecome streamTask")
        streamTask.resume()
    }

    
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome downloadTask: URLSessionDownloadTask) {
        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didBecome downloadTask: URLSessionDownloadTask)")
        // The task became a download task - start the task
        //print("didBecome downloadTask")
        downloadTask.resume()
    }

    
    func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge, completionHandler: (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)")
        // We've got a URLAuthenticationChallenge - we simply trust the HTTPS server and we proceed
        //print("didReceive challenge")
        completionHandler(.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!))
    }

    
    func urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest, completionHandler: (URLRequest?) -> Void) {
        // The original request was redirected to somewhere else.
        // We create a new dataTask with the given redirection request and we start it.
        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, task: URLSessionTask, willPerformHTTPRedirection response: HTTPURLResponse, newRequest request: URLRequest, completionHandler: (URLRequest?) -> Void)")
        if let urlString = request.url?.absoluteString {
            Logger.log.notice("willPerformHTTPRedirection to \(urlString)")
        } else {
            Logger.log.notice("willPerformHTTPRedirection")
        }
        if let task = self.session?.dataTask(with: request) {
            task.resume()
        }
    }


    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {

        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)")

        defer {
            if let _ = self.receivedJsonObjectDelegate {
                self.receivedJsonObjectDelegate!(self.jsonObjectResult)
            }
            if let _ = self.sem {
                Logger.log.notice("Sending Sem-Signal. The END.")
                self.sem!.signal()
            }
        }

        if let _ = error {
            Logger.log.error("Error: \(error!.localizedDescription)")
        }

        if let receivedData = self.receivedData {
            do {
                guard let jsonObject = try JSONSerialization.jsonObject(with: receivedData) as? [String: Any] else {
                    Logger.log.error("Error: Cannot convert data to JSON object.")
                    return
                }

                self.jsonObjectResult = jsonObject
            } catch let error as NSError {
                Logger.log.error("Error parsing JSON: \(error.localizedDescription)")
            }
        }
    }


    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: (URLSession.ResponseDisposition) -> Void) {
        Logger.funcStart.notice("URLSessionDataDelegate->urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: (URLSession.ResponseDisposition) -> Void)")

        guard let response = response as? HTTPURLResponse,
            (200...299).contains(response.statusCode),
            let mimeType = response.mimeType,
            (mimeType == "text/plain" || mimeType == "application/json") else {
            Logger.log.error("Error: HTTP request failed")
            completionHandler(.cancel)
            return
        }

        completionHandler(.allow)

    }


    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        Logger.funcStart.notice("urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)")
        if let _ = self.receivedData {
            self.receivedData!.append(data)
        }
    }
}
