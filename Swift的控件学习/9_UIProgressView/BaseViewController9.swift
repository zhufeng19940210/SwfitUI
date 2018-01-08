//
//  BaseViewController9.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController9: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UIProgressView"
        setupProgressView()
    }
}
extension BaseViewController9{
    fileprivate func setupProgressView(){
        //1.创建进度条
        let progress = UIProgressView(frame: CGRect(x: 100, y: 300, width: 200, height: 20))
        //2.添加到视图上
        self.view.addSubview(progress)
        //3.核心属性
        //进度:0~1
        //设置当前进度
        progress.progress = 0.5
        progress.setProgress(0.6, animated: true)
        //4.颜色相关
        //5.图片相关
        
    }
}
