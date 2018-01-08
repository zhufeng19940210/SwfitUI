
//
//  BaseViewController10.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController10: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UIActivityIndicatorView"
        setupActivityIndicator()
    }
}
extension BaseViewController10{
    fileprivate func setupActivityIndicator(){
        //1.创建活动指示器
        let activity = UIActivityIndicatorView(frame: CGRect(x: 100, y: 360, width: 80, height: 80))
        activity.activityIndicatorViewStyle = .gray
        //2.添加到视图上
        self.view.addSubview(activity)
        //动画开始
        activity.startAnimating()
    }
}
