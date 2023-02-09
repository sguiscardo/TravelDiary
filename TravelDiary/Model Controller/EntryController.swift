//
//  EntryController.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import Foundation

class EntryController {
    
    // MARK: - Singleton
    ///Singleton: To ensure that we are interacting with the  *SAME* instance of our *entries* array we created a singleton to pass around this specific instance of our **EntryController**
    static let sharedInstance = EntryController() //single
    
    // MARK: - Source of truth
    /// Source of Truth: The single location we will store our **Entry** data.
    var entries: [Entry] = [] //this is the Array that I am going to move around the app, to control my data
    
    // MARK: - Crud
    func createFunction(title: String, addy: String, body: String) {//initialize Entry and called in entry and it is immutable because I made it a constant.
        let entry = Entry(title: title, address: addy, body: body)//This line of code has been initialized due to the E in entry being capital.
        //to access this funtion you need to add it to the SOT (Source of truth)
        entries.append(entry)
        save()
        
    }
    
    func updateFunction(entryToUpdate: Entry, newTitle: String, newAddress: String, newBody: String) {
        entryToUpdate.title = newTitle
        entryToUpdate.address = newAddress
        entryToUpdate.body = newBody
        save()
        
    }
    
    func delete(entryToDelete: Entry) {
        guard let index = entries.firstIndex(of: entryToDelete) else {return}
        entries.remove(at: index)
        save()
        
    }
    // MARK: - Persistence
    
    func save() {
        
    }
    
    func load() {
        
    
    }
}// end of class
