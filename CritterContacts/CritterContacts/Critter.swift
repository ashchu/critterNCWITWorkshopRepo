//
//  Critter.swift
//  CritterContacts
//
//  Created by YOU on 7/20/19.
//

import UIKit
import os.log

class Critter: NSObject {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    
    //MARK: Archiving Paths
    
    //MARK: Types
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?) {
        
        if name.isEmpty {
            return nil
        }
        
        self.name = name
        self.photo = photo
    }
    //MARK: NSCoding

}
