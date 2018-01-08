//
//  BaseViewController6.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController6: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UISwitch的使用"
        setupSwtich()
    }
}
extension BaseViewController6{
    fileprivate func setupSwtich(){
        //1.创建Switch
        let sw = UISwitch(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //2.添加到界面上
        self.view.addSubview(sw)
        //核心属性，开关的状态 (默认是:关)
        //设置开关的状态
        sw.isOn = true
        sw.setOn(false, animated: true)
        //拿到当前的状态
        print(sw.isOn)
        //设置开关开的时候状态的颜色(默认是绿色)
        sw.onTintColor = UIColor.red
        sw.tintColor = UIColor.purple
        //设置开关上的滑块的颜色
        sw.thumbTintColor = UIColor.yellow
        //核心的方法,点击的事件
        sw.addTarget(self, action: #selector(mySwitch(_:)), for: .valueChanged)
    }
    @objc func mySwitch(_ sw: UISwitch){
        if sw.isOn {
            print("is open")
        }else{
            print("not open")
        }
    }
}
