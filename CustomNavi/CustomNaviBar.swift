//
//  CustomNaviBar.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class CustomNaviBar: UINavigationBar {
    
    enum Style: CGFloat {
        case main = 120
        case detail = 66
    }
    
    var height: CGFloat?
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        guard let height = height else { return .zero}
        return CGSize(width: UIScreen.main.bounds.width, height: height)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let height = height else {
            return
        }
        
        let y = UIApplication.shared.statusBarFrame.height
        frame = CGRect(x: frame.origin.x, y:  y, width: frame.size.width, height: height)
        
        for subview in self.subviews {
            var stringFromClass = NSStringFromClass(subview.classForCoder)
            if stringFromClass.contains("BarBackground") {
                subview.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: height)
                subview.backgroundColor = self.backgroundColor
            }
            
            stringFromClass = NSStringFromClass(subview.classForCoder)
            if stringFromClass.contains("BarContent") {
                subview.frame = CGRect(x: subview.frame.origin.x, y: 20, width: subview.frame.width, height: height)
                subview.backgroundColor = self.backgroundColor
            }
        }
    }
    
}
