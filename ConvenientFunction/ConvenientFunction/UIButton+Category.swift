//
//  UIButton+Category.swift
//  ConvenientFunction
//
//  Created by 朴子hp on 2018/9/9.
//  Copyright © 2018年 朴子hp. All rights reserved.
//

import UIKit

extension UIButton {
    
    //MARK:  单独文字形式
    convenience init(title : String , titleColor : UIColor , font : CGFloat) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: font)
    }
    convenience init(title : String , titleColor : UIColor , font : CGFloat, backgroundColor : UIColor) {
        self.init()
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: font)
    }
    convenience init(title : String , titleColor : UIColor , font : CGFloat, backgroundColor : UIColor, cornerRadius: CGFloat) {
        self.init()
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: font)
        
        //切圆角
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }
    
    //MARK:  单独图片形式
    convenience init(backgroundImageName: String)  {
        self.init()
        self.setBackgroundImage(UIImage.init(named: backgroundImageName), for: .normal)
    }
    
    //MARK:  图文形式分两种 1> 图文并列
    convenience init(title: String, titleColor: UIColor, imageName: String) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.sizeToFit()
        self.setImage(UIImage.init(named: imageName), for: .normal)
    }
    
    //MARK:  图文形式分两种 2> 以图为背景
    convenience init(title: String, titleColor: UIColor, font: CGFloat, backgroundImageName: String)  {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: font)
        self.setBackgroundImage(UIImage.init(named: backgroundImageName), for: .normal)
    }
}
