//
//  BaseViewController7.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController7: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UISlider"
        setupSlider()
    }
}
extension BaseViewController7{
    fileprivate func setupSlider(){
        //1.创建滑条
        let slider = UISlider(frame: CGRect(x: 10, y: 100, width: 200, height: 20))
        //2.添加到视图上
        self.view.addSubview(slider)
        //核心属性 值
        //滑块的位置对应的值(默认的是0-1)
        slider.value = 0.5
        //最大和最下值
        slider.minimumValue = 0
        slider.maximumValue = 100
        //核心方法
        slider.addTarget(self, action: #selector(sliderAction(_:)), for: .valueChanged)
    }
    @objc func sliderAction(_ slider: UISlider){
        print("slider响应的事件")
    }
}
