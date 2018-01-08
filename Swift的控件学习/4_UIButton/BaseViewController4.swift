//
//  BaseViewController4.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UIButton"
        //添加视图
        setupButton()
    }
}
//扩展
extension BaseViewController4{
    fileprivate func setupButton(){
        //1.创建uibutton的对象
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //2.添加到视图上去
        self.view.addSubview(button)
        //3.设置文字
        button.setTitle("hello button", for: .normal)
        //高亮的设置文字
        button.setTitle("hello world", for: .highlighted)
        //设置图片是否选择
        button.isSelected = false
        //button的可用
        button.isEnabled = true
        //设置文字颜色
        button.setTitleColor(UIColor.yellow, for: .normal)
        //高亮的颜色
        button.setTitleColor(UIColor.red, for: .highlighted)
        //文字的大小
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        //添加事件
        button.addTarget(self, action: #selector(buttonClick(_:)), for: .touchUpInside)
    }
    //响应的事件
    @objc func buttonClick(_ btn :UIButton){
        
    }
}
