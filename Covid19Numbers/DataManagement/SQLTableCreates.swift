//
//  SQLTableCreates.swift
//  Covid19Numbers
//
//  Created by Dirk Scheidt on 09.10.20.
//  Copyright © 2020 Dirk Scheidt. All rights reserved.
//

import Foundation

let createCasesTable: String = """
CREATE TABLE IF NOT EXISTS cases (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    OBJECTID INTEGER,
    GEN TEXT,
    BEZ TEXT,
    BL TEXT,
    EWZ INTEGER,
    cases INTEGER,
    cases_per_100k REAL,
    cases7_per_100k REAL,
    last_update TEXT,
    datetime1000 INTEGER,
    dupprevent TEXT KEY UNIQUE NOT NULL,
    idLandkreis TEXT,
    deaths INTEGER,
    recovered INTEGER,
    neueFaelle INTEGER,
    neueFaelle_per_100k REAL,
    date1000 INTEGER
);
"""


let createFavoriteTable: String = """
CREATE TABLE IF NOT EXISTS favorites (
    idLandkreis TEXT PRIMARY KEY UNIQUE
);
"""
