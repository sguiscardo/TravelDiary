//
//  Entry.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import Foundation

class Entry {
    
    let title: String
    let address: String
    let entryDate: Date
    let body: String
    
    init(title: String, address: String, entryDate: Date = Date(), body: String) {
        self.title = title
        self.address = address
        self.entryDate = entryDate
        self.body = body
    }
    
}// end of class

