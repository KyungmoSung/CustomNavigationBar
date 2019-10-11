//
//  CustomNaviView.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class CustomNaviView: UIView {
    static let shared: CustomNaviView = {
        let instance = UINib(nibName: "CustomNaviView", bundle: nil).instantiate(withOwner: nil, options: nil)[0]
        return instance as! CustomNaviView
    }()
}
