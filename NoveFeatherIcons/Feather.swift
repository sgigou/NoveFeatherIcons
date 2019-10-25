//
//  Feather.swift
//  NoveFeatherIcons
//
//  Created by Steve Gigou on 25/10/2019.
//  Copyright © 2019 Novesoft. All rights reserved.
//

import UIKit

public class Feather {
    
    public enum IconName: String {
        case feather = "feather"
    }
    
    public static func getIcon(_ name: IconName) -> UIImage {
        guard let image = UIImage(named: name.rawValue) else {
            #if DEBUG
            print("[WARNING] Icon \(name) not found.")
            #endif
            return UIImage()
        }
        return image
    }
    
}
