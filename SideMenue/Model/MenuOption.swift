//
//  MenuOption.swift
//  SideMenue
//
//  Created by Yashom on 22/03/22.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Notification
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Notes"
        case .Inbox: return "Labels"
        case .Notification: return "Archive"
        case .Settings: return "Deleted"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "person1") ?? UIImage()
        case .Inbox: return UIImage(named: "mail1") ?? UIImage()
        case .Notification: return UIImage(named: "menu") ?? UIImage()
        case .Settings: return UIImage(named: "setting1") ?? UIImage()
        }
    }
    
}
