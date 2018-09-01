//
//  Document.swift
//  Documents
//
//  Created by Hayden on 8/31/18.
//  Copyright © 2018 Harrill, Hayden. All rights reserved.
//

import Foundation

struct Document {

    let name: String
    let size: String
    let date: Date

    init(name: String, size: String, date: Date) {
        self.name = name
        self.size = size
        self.date = date
    }
    
}
