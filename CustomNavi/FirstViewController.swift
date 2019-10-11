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
        navigationBar(style: .main, title: "메인뷰컨트롤러")
    }
    
    @IBAction func show(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(withIdentifier: "SecondVc"))!
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
