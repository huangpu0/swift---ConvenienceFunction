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
        let lab = UILabel.init(text: "测试数据居中", textColor: .black, font: 12.0, textAlignment: .center)
        lab.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        lab.backgroundColor = .green
        view.addSubview(lab)
        
        let btn = UIButton.init(title: "按钮", titleColor: .cyan, font: 15.0)
        btn.frame = CGRect.init(x: 100, y: 150, width: 100, height: 50)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(test), for: .touchUpInside)
        view.addSubview(btn)
        
        
    }

    //MARK: 按钮响应事件
    @objc func test() -> Void{
        let alter = UIAlertController.init(title: "提示", message: "你点击了按钮", preferredStyle: .alert)
        let action = UIAlertAction.init(title: "ok", style: .cancel) { (action) in
            print("取消了点击")
        }
        alter.addAction(action)
        self.present(alter, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

