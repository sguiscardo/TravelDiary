//
//  EntryDetailTableViewController.swift
//  TravelDiary
//
//  Created by Sebastian Guiscardo on 2/9/23.
//

import UIKit

class EntryDetailTableViewController: UIViewController {
    
    // MARK: - Outlets
    
    
    @IBOutlet weak var entryDateLabel: UILabel!
    @IBOutlet weak var entryTitleTextField: UITextField!
    @IBOutlet weak var entryAddressTextField: UITextField!
    @IBOutlet weak var entryBodyTextView: UITextView!
    
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
     
        
    }
    // MARK: - Properties
    var entryReciever: Entry?
    
    // MARK: - Helper Functions
    func updateView() {
        entryTitleTextField.text = entryReciever?.title
        entryAddressTextField.text = entryReciever?.address
        entryDateLabel.text = entryReciever?.entryDate.stringValue()
        entryBodyTextView.text = entryReciever?.body
    }
    // MARK: - Actions
    //if the .text is on the right it is there to display it, but if it's on the left it's there to assign the text.
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = entryTitleTextField.text,
              let address = entryAddressTextField.text,
              let body = entryBodyTextView.text else {return}
   
        if let entry = entryReciever {//if line 25 has a value, the user has selected the call, and our segue has sent over the selected 'Entry'
            EntryController.sharedInstance.updateFunction(entryToUpdate: entry, newTitle: title, newAddress: address, newBody: body)
        } else {//Else, line 25 does NOT have a value, the user did not select a call, the user must have selexted the add entry button.
            EntryController.sharedInstance.createFunction(title: title, addy: address, body: body)
            
        }
        navigationController?.popViewController(animated: true) //pop the view controller(basically go back to the screen that was there before. like going back on a website. 
    }
    
//    let address = entryAddressTextField.text ?? "There is no address"
}
//EntryController.sharedInstance.createFunction(title: title, addy: address, body: body)
//navigationController?.popViewController(animated: true)
