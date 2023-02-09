//
//  Entry.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import Foundation
//declaration step
class Entry {
    
    var title: String
    var address: String
    let entryDate: Date
    var body: String
    
    init(title: String, address: String, entryDate: Date = Date(), body: String) {
        self.title = title
        self.address = address
        self.entryDate = entryDate
        self.body = body
    }
    
}// end of class

extension Entry: Equatable { //Adopting
    //conforming
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.entryDate == rhs.entryDate
    }
    
}
