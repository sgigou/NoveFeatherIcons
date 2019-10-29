//
//  FeatherButton.swift
//  NoveFeatherIcons
//
//  Created by Steve Gigou on 28/10/2019.
//  Copyright © 2019 Novesoft. All rights reserved.
//

import UIKit

@IBDesignable public class FeatherButton: UIButton {
    
    @IBInspectable public var iconName: String? {
        didSet {
            updateIcon()
        }
    }
    
    // MARK: Life cycle
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        updateIcon()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        updateIcon()
    }
    
    // MARK: Drawing
    
    private func updateIcon() {
        if let name = iconName {
            setImage(Feather.getIcon(name), for: .normal)
        }
    }
    
}
