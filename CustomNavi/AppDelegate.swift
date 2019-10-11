//
//  AppDelegate.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // 기존 네비게이션바 숨김
        let navigationController = self.window?.rootViewController as! UINavigationController
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController.navigationBar.backgroundColor = .clear
        navigationController.navigationItem.setHidesBackButton(true, animated:false)
        
        // Safe Area 영역 백그라운드 뷰 추가
        if #available(iOS 11.0, *) {
            let statusbarBackgroundView = UIView()
            statusbarBackgroundView.backgroundColor = .white
            navigationController.view.addSubview(statusbarBackgroundView)
            statusbarBackgroundView.snp_makeConstraints { (make) in
                make.top.equalToSuperview()
                make.bottom.equalTo(navigationController.view.safeAreaLayoutGuide.snp.top)
                make.left.equalToSuperview()
                make.right.equalToSuperview()
            }
        }
        
        return true
    }
}

