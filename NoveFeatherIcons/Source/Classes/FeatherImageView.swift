//
//  FeatherImage.swift
//  NoveFeatherIcons
//
//  Created by Steve Gigou on 29/10/2019.
//  Copyright © 2019 Novesoft. All rights reserved.
//

import UIKit

extension UIImageView {
    
    public convenience init(icon: Feather.IconName) {
        let image = Feather.getIcon(icon)
        self.init(image: image)
    }
    
}

class FeatherImageView: UIImageView {
    
    @IBInspectable public var iconName: String? {
        didSet {
            updateIcon()
        }
    }
    
    // MARK: Life cycle
    
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
