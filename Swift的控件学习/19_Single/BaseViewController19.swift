//
//  BaseViewController19.swift
//  Swift的控件学习
//
//  Created by 朱峰 on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController19: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "测试单列"
        let tool = NetworkTool.shared
        tool.addmMethod()
    }
}
