//
//  CustomButton.swift
//  wheresmyramen
//
//  Created by Johnny Young on 7/23/18.
//  Copyright © 2018 Johnny Young. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 2
        layer.borderWidth = 1
        layer.borderColor = UIColor.white.cgColor
    }

}
