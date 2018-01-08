//
//  BaseViewController8.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController8: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UIStepper"
        setupSettpper()
    }
}
extension BaseViewController8{
    fileprivate func setupSettpper(){
        //1.创建步进器
        let stepper = UIStepper(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        //2.添加到视图上
        self.view.addSubview(stepper)
        //核心属性:值
        stepper.value = 1
        //每一次加的东西值
        stepper.stepValue = 4
        // 设置填充颜色
        stepper.tintColor = UIColor.red
        //6.设置是否重复 false->按住不放的时候不计数；true->按住不放的时候计数(默认)
        stepper.autorepeat = false
        //响应的事件
        stepper.addTarget(self, action: #selector(stepperClick(_:)), for: .valueChanged)
    }
    @objc func stepperClick(_ setpper: UIStepper){
        print(setpper.value)
    }
}
