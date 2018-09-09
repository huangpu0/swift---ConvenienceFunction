//
//  UILabel+Category.swift
//  ConvenientFunction
//
//  Created by 朴子hp on 2018/9/9.
//  Copyright © 2018年 朴子hp. All rights reserved.
//

import UIKit

extension UILabel {
    
    /*  便利构造函数:
     1> convenience开头
     2> 在构造函数中必须明确调用一个设计的构造函数(self)
     */
    
    //MARK: 便利构造函数: >> 对UILabel一些常用属性封装
    convenience init(text : String? = nil, textColor : UIColor, font : CGFloat, textAlignment: NSTextAlignment) {
        //1.实例化当前对象—因为在便利构造函数中是不负责创建对象的,所以必须调用本身的构造函数来创建对象后
        //2.访问对象访问属性
        self.init()
        if text != nil {
            self.text = text
        }
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: font)
    }
    
}
