//
//  Event.swift
//  JamSeshTest
//
//  Created by Tanner Roberts on 6/22/21.
//

import Foundation
import CoreLocation
class Event {
    var title: String
    var eventTime: Date
    var location: CLLocation
  //  let creator: User
    var instruments: String
    var description: String
   // var attending: [User]
    init(title: String, eventTime: Date, location: CLLocation, /* creator: User,*/ description: String, /*attending: [User],*/ instruments: String){
        self.title = title
        self.eventTime = eventTime
        self.location = location
       // self.creator = creator
        self.description = description
       // self.attending = attending
        self.instruments = instruments
    }
}//End of class
