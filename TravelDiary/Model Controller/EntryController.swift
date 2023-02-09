//
//  EntryController.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import Foundation

class EntryController {
    
    // MARK: - Singleton
    static let sharedInstance = EntryController() //single
    // MARK: - Source of truth
    var entries: [Entry] = [] //this is the Array that I am going to move around the app, to control my data
    // MARK: - Crud
    func create() {
        
    }
    
    func update() {
        
        
    }
    
    func delete() {
        
    }
    // MARK: - Persistence
    
    func save() {
        
    }
    
    func load() {
        
    
    }
}// end of class
