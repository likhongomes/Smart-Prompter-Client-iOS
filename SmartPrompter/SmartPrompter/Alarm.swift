//
//  Alarm.swift
//  SmartPrompter
//
//  Created by Likhon Gomes on 9/19/19.
//  Copyright © 2019 Likhon Gomes. All rights reserved.
//

import Foundation
import GRDB

///The base data structure of an alarm containing all it's elements
class Alarm: PersistableRecord, Codable, FetchableRecord {
    
    var id:Int?
    var firebaseID:String?
    var label:String?
    var year:Int?
    var month:Int?
    var day:Int?
    var hour:Int?
    var minute:Int?
    var active:Bool?
    var status:String?
    var deleteRequest:String?
    
    
    func encode(to container: inout PersistenceContainer) {
        container["label"] = label
        container["hour"] = hour
        container["minute"] = minute
        container["active"] = active
        container["year"] = year
        container["month"] = month
        container["day"] = day
    }
    
    init(){}
    
    init(label:String, hour:Int, minute:Int, year:Int, month:Int, day:Int, active:Bool) {
        self.label = label
        self.hour = hour
        self.minute = minute
        self.active = active
        self.year = year
        self.month = month
        self.minute = minute
        self.deleteRequest = ""
    }
}

