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
        navigationBar(style: .detail, title: "상세뷰컨트롤러")
    }
    
    @IBAction func onClickBtn(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(withIdentifier: "SecondVc"))!
        navigationController?.pushViewController(vc, animated: true)
    }
}
