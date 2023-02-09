//
//  EntryTableViewCell.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import UIKit

class EntryTableViewCell: UITableViewCell {

    // MARK: - Outlotes
    
    @IBOutlet weak var entryNameLabel: UILabel!
    @IBOutlet weak var entryAddressLabel: UILabel!
    @IBOutlet weak var entryDateLabel: UILabel!
    
    func updateView(with entryToDisplay: Entry) {
        entryNameLabel.text = entryToDisplay.title
        entryAddressLabel.text = entryToDisplay.address
        entryDateLabel.text = entryToDisplay.entryDate.stringValue()
        
        
        
    }
}
