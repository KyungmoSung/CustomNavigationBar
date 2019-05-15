//
//  ViewController.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar(style: .detail, title: "Detail \(String(describing: navigationController?.viewControllers.count))")
    }
    
    @IBAction func onClickBtn(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(withIdentifier: "SecondVc"))!
        navigationController?.pushViewController(vc, animated: true)
    }
}
