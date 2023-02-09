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
   
//        let address = entryAddressTextField.text ?? "There is no address"
        
        EntryController.sharedInstance.createFunction(title: title, addy: address, body: body)
        navigationController?.popViewController(animated: true)
    }
    
    
}
