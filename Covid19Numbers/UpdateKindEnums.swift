//
//  CommonStructs.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 10.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

public enum UpdateKind: String {
    case backgroundTask = "backgroundTask"
    case manual         = "manual"
    case initial        = "initial"
    case onActivateApp  = "onActivateApp"
}
