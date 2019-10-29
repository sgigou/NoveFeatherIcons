//
//  FeatherBarButtonItem.swift
//  NoveFeatherIcons
//
//  Created by Steve Gigou on 28/10/2019.
//  Copyright © 2019 Novesoft. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    public convenience init(icon: Feather.IconName, style: UIBarButtonItem.Style, target: Any?, action: Selector?) {
        let image = Feather.getIcon(icon)
        self.init(image: image, style: style, target: target, action: action)
    }
    
}

@IBDesignable public class FeatherBarButtonItem: UIBarButtonItem {
    
    @IBInspectable public var iconName: String? {
        didSet {
            updateIcon()
        }
    }
    
    // MARK: Life cycle
    
    override init() {
        super.init()
        updateIcon()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateIcon()
    }
    
    // MARK: Drawing
    
    private func updateIcon() {
        if let name = iconName {
            image = Feather.getIcon(name)
        }
    }
    
}
