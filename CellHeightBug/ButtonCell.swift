//
//  ButtonCell.swift
//  CellHeightBug
//
//  Created by Manuel Trezza on 09/05/2016.
//  Copyright © 2016 Manuel Trezza. All rights reserved.
//

import UIKit

class ButtonCell: UITableViewCell {
    
    var button: UIButton!
    var buttonText: String?
    
    convenience init(buttonText: String?) {
        self.init()
        
        self.buttonText = buttonText
        
        button = UIButton(type: UIButtonType.System)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.lineBreakMode = .ByWordWrapping
        button.contentHorizontalAlignment = .Center
        button.titleLabel?.textAlignment = .Center
        
        button.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(button)
        
        NSLayoutConstraint.activateConstraints([
            button.topAnchor.constraintEqualToAnchor(self.contentView.topAnchor),
            button.bottomAnchor.constraintEqualToAnchor(self.contentView.bottomAnchor),
            button.rightAnchor.constraintEqualToAnchor(self.contentView.rightAnchor),
            button.leftAnchor.constraintEqualToAnchor(self.contentView.leftAnchor)
            ])
        
        button.setTitle(buttonText, forState: .Normal)
    }
}
