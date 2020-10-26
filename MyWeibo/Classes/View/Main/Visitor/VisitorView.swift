//
//  VisitorView.swift
//  MyWeibo
//
//  Created by 王武 on 2020/10/26.
//

import UIKit

/// 访客视图 - 处理用户未登录的界面显示
class VisitorView: UIView {
    
    // 重写父类构造函数
    // initWithFrame 使用代码开发使用的
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    // initWithCoder - 使用 SB & XIB 开发加载的函数
    required init?(coder: NSCoder) {
        // 使用 SB 开发,调用这个视图, 会直接崩溃
        // fatalError("init(coder:) has not been implemented")
        
        super.init(coder: coder)
        
        setupUI()
    }
}

extension VisitorView {
    // 设置界面
    private func setupUI() {
        
    }
}
