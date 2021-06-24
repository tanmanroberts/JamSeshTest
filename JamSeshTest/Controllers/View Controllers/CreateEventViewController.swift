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
    @IBOutlet weak var eventTimeTextField: UITextField!
    @IBOutlet weak var instrumentsUsedTextField: UITextField!
    @IBOutlet weak var eventDetailsTextView: UITextView!
    
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! EventDetailViewController
        vc.finalName = self.name
        vc.finalLocation = self.location
        vc.finalTime = self.time
        vc.finalInstuments = self.instruments
        vc.finalDetails = self.details
    }
    
    //MARK: - Properties
    var name = ""
    var location = ""
    var time = ""
    var instruments = ""
    var details = ""
    
    //MARK: - Actions
    
    
    @IBAction func saveEventButtonTapped(_ sender: UITextField) {
        self.name = eventNameTextField.text!
        self.location = eventLocationTextField.text!
        self.time = eventTimeTextField.text!
        self.instruments = instrumentsUsedTextField.text!
        self.details = eventDetailsTextView.text
        performSegue(withIdentifier: "toDetailVC", sender: self)
        print(name,location,time,instruments,details)
    }
    //MARK: - Functions
    
    

}//End of class
