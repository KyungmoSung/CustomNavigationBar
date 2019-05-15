//
//  FirstViewController.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar(style: .main)
    }
    
    @IBAction func show(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(withIdentifier: "SecondVc"))!
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
