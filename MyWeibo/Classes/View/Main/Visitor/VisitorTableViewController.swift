//
//  VisitorTableViewController.swift
//  MyWeibo
//
//  Created by 王武 on 2020/10/26.
//

import UIKit

class VisitorTableViewController: UITableViewController {

    // 用户登录标记
    private var userLogin = false

    override func loadView() {
        userLogin ? super.loadView() : setupVisitorView()
    }
    
    // 设置访客视图
    private func setupVisitorView() {
        view = VisitorView()
        view.backgroundColor = UIColor.orange
    }
}
