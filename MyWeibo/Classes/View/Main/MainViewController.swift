//
//  MainViewController.swift
//  MyWeibo
//
//  Created by 王武 on 2020/10/26.
//

import UIKit

class MainViewController: UITabBarController {
    // MARK: - 监听方法
    /// 点击中间按钮
    @objc private func clickComposeButton() {
        debugPrint("www")
    }

    // MARK: - 视图生命周期函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 添加控制器，并不会创建 tabbar 中的按钮
        // 所有控件都是延迟加载
        addChilViewControllers()
//        debugPrint(tabBar.subviews)
        setupComposedButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 创建 tabbar 中的所有控制器对应的按钮
        super.viewWillAppear(animated)
        
//        debugPrint(tabBar.subviews)
        tabBar.bringSubviewToFront(composedButton)
    }
    
    // MARK: - 懒加载控件
    private lazy var composedButton: UIButton = UIButton(imageName: "feed_publish")
}


// MARK: - 设置界面
extension MainViewController {
    
    /// 设置tabBar中间按钮
    private func setupComposedButton() {
        // 1.添加按钮
        tabBar.addSubview(composedButton)
        // 2.调整按钮
        let count = children.count
        let w = tabBar.bounds.width / CGFloat(count)
        
        composedButton.frame = tabBar.bounds.insetBy(dx: w * 2, dy: 0)
        
        // 3.添加监听
        composedButton.addTarget(self, action: #selector(clickComposeButton), for: .touchUpInside)
    }
    
    /// 添加所有控制器
    private func addChilViewControllers() {
        tabBar.tintColor = UIColor.orange
        addChilViewController(HomeTableViewController(), title: "首页", imageName: "home_tabbar")
        addChilViewController(MessageTableViewController(), title: "消息", imageName: "mine_tabbar")
        addChild(UIViewController())
        addChilViewController(DiscoverTableViewController(), title: "发现", imageName: "home_tabbar")
        addChilViewController(ProfileTableViewController(), title: "我", imageName: "home_tabbar")
    }
    // 添加控制器
    private func addChilViewController(_ vc: UIViewController, title: String, imageName: String) {
        // 设置标题
        vc.title = title
        // 设置图像
        vc.tabBarItem.image = UIImage(named: imageName)
        // 导航控制器
        let nav = UINavigationController(rootViewController: vc)
        
        addChild(nav)
    }
}
