//
//  ViewController.swift
//  ConvenientFunction
//
//  Created by 朴子hp on 2018/9/9.
//  Copyright © 2018年 朴子hp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //使用例子 UILabel UIButton
        let lab = UILabel.init(text: "测试数据居中", textColor: .cyan, font: 12.0, textAlignment: .center)
        lab.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        lab.backgroundColor = .green
        view.addSubview(lab)
        
        let btn = UIButton.init(title: "按钮", titleColor: .red, font: 15.0)
        btn.frame = CGRect.init(x: 100, y: 150, width: 100, height: 50)
        btn.backgroundColor = UIColor.red
        view.addSubview(btn)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

