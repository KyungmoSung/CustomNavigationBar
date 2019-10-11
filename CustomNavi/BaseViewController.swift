//
//  BaseViewController.swift
//  CustomNavi
//
//  Created by admin on 13/05/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
    var navigationStyle: CustomNaviBar.Style?
    var navigationTitle: String?
    
    private enum Constants {
        static let defaultNavigationHeight: CGFloat = 44
        static let defaultStatusBarHeight: CGFloat = 20
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationStyle = navigationStyle {
            setupNavigationBar(style: navigationStyle, title: navigationTitle)
        }
    }
    
    func navigationBar(style: CustomNaviBar.Style, title: String? = "") {
        navigationStyle = style
        navigationTitle = title
    }
    
    func setupNavigationBar(style: CustomNaviBar.Style, title: String? = "") {
        var topInset = Constants.defaultStatusBarHeight
        let height = style.rawValue
        
        // 기존 네비게이션 뷰 제거
        CustomNaviView.shared.removeFromSuperview()
        CustomDetailNaviView.shared.removeFromSuperview()
        navigationItem.hidesBackButton = true
        
        // 네비게이션 바 높이 설정
        if let customNaviBar = navigationController?.navigationBar as? CustomNaviBar{
            customNaviBar.height = height
            customNaviBar.sizeToFit()
        }
        
        DispatchQueue.main.async {
            // Safe Area 높이 설정
            if #available(iOS 11.0, *) {
                self.additionalSafeAreaInsets.top = height - Constants.defaultNavigationHeight
                if let window = UIApplication.shared.keyWindow {
                    let top = window.safeAreaInsets.top
                    topInset = top >= Constants.defaultStatusBarHeight ? top : Constants.defaultStatusBarHeight
                }
            }
            
            switch style {
            case .main:
                let mainNavigationView = CustomNaviView.shared
                self.navigationController?.view.addSubview(mainNavigationView)
                mainNavigationView.snp_makeConstraints { (make) in
                    make.top.equalToSuperview().offset(topInset)
                    make.left.equalToSuperview()
                    make.right.equalToSuperview()
                    make.height.equalTo(height)
                }
            case .detail:
                let detailNavigationView = CustomDetailNaviView.shared
                detailNavigationView.titleLabel.text = title
                self.navigationController?.view.addSubview(detailNavigationView)
                detailNavigationView.snp_makeConstraints { (make) in
                    make.top.equalToSuperview().offset(topInset)
                    make.left.equalToSuperview()
                    make.right.equalToSuperview()
                    make.height.equalTo(height)
                }
            }
        }
    }
}
