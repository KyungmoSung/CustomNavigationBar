//
//  CustomDetailNaviView.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class CustomDetailNaviView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    
    static let shared: CustomDetailNaviView = {
        let instance = UINib(nibName: "CustomDetailNaviView", bundle: nil).instantiate(withOwner: nil, options: nil)[0]
        return instance as! CustomDetailNaviView
    }()
    
    @IBAction func onClickBackBtn(_ sender: Any) {
        let navigationController = self.window?.rootViewController as! UINavigationController
        navigationController.popViewController(animated: true)
    }
    
}
