
//
//  BaseViewController11.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController11: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UISegmentedControl"
        setupSegemtnControl()
    }
}
//扩展
extension BaseViewController11{
    fileprivate func setupSegemtnControl(){
        //1.创建多段选择器
        let segment = UISegmentedControl(items: ["你好","平安","开心"])
        segment.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        //2.添加到视图上
        self.view.addSubview(segment)
        //3.默认是选中第一个0
        segment.selectedSegmentIndex = 0
        //设置填充的颜色
        segment.tintColor = UIColor.red
        //添加事件
        segment.addTarget(self, action: #selector(segmentAction(segment:)), for: .valueChanged)
    }
}
//定义的方法方法
extension BaseViewController11{
    @objc func segmentAction(segment:UISegmentedControl) {
        print("segment.selectedSegementIndex\(segment.selectedSegmentIndex)")
    }
}
