//
//  UIButton+Extension.swift
//  MyWeibo
//
//  Created by 王武 on 2020/10/26.
//

import UIKit

extension UIButton {
    
    /// `便利`构造函数
    convenience init(imageName: String, backImageName: String = "") {
        self.init()
        
        setImage(UIImage(named: imageName), for: .normal)
        setImage(UIImage(named: imageName+"_press"), for: .highlighted)
        if backImageName != "" {
            setBackgroundImage(UIImage(named: backImageName), for: .normal)
            setBackgroundImage(UIImage(named: backImageName+"_press"), for: .highlighted)
        }
        // 根据背景图片的大小调整大小
        sizeToFit()
    }
}
