//
//  CreateEventViewController.swift
//  JamSeshTest
//
//  Created by Tanner Roberts on 6/23/21.
//

import UIKit

class CreateEventViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var eventNameTextField: UITextField!
    @IBOutlet weak var eventLocationTextField: UITextField!
    @IBOutlet weak var eventTimeTextField: UITextField! //this text field isnt in use rn. I deleted the connection
    @IBOutlet weak var instrumentsUsedTextField: UITextField!
    @IBOutlet weak var eventDetailsTextView: UITextView!
    @IBOutlet weak var eventDatePicker: UIDatePicker!
    
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - Actions
    @IBAction func datePickerAction(_ sender: Any) {
        
        //for whatever reason this needs to exist even if it does nothing lol
    }
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! EventDetailViewController
        vc.finalName = self.name
        vc.finalLocation = self.location
        vc.finalTime =  "\(self.selectedDate)"
        vc.finalInstuments = self.instruments
        vc.finalDetails = self.details
    }
    
    //MARK: - Properties
    var events: Event?
    var selectedDate = Date()
    
    var name = ""
    var location = ""
    var instruments = ""
    var details = ""
    var datePicker = UIDatePicker()
    //MARK: - Actions
    
    
    @IBAction func saveEventButtonTapped(_ sender: UITextField) {
        self.name = eventNameTextField.text!
        self.location = eventLocationTextField.text!
        self.selectedDate = self.eventDatePicker.date
        self.instruments = instrumentsUsedTextField.text!
        self.details = eventDetailsTextView.text
        performSegue(withIdentifier: "toDetailVC", sender: self)
        print(name,location,time,instruments,details)
    }
    //MARK: - Functions
    
    

}//End of class
