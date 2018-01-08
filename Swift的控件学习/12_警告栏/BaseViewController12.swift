//
//  BaseViewController12.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController12: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "警告栏"
        setupErrorMethod()
    }
}
//扩展的方法
extension BaseViewController12{
    fileprivate func setupErrorMethod(){
        //1.创建一个表视图
        //UIAlterControler: UIViewControlelr
        //参数1：标题
        //参数2： 信息
        //参数3： 风格(actionSheet->表单，Alert->警告栏)
        let alterController = UIAlertController(title: "标题消息", message: "消息", preferredStyle: .alert)
        //2.添加到界面上
        self.present(alterController, animated: true, completion: nil)
        //3.添加选项按钮
        let action = UIAlertAction(title: "相机", style: .default) { (_) in
            print("相机点击了")
        }
        let action2 = UIAlertAction(title: "相册", style: .destructive) { (_) in
            print("相册被点击了")
        }
        //取消风格
        let action3 = UIAlertAction(title: "取消", style: .cancel) { (_) in
            print("取消点击了")
        }
        //添加对应的action
        alterController.addAction(action)
        alterController.addAction(action2)
        //alterController.addAction(action3)
        
    }
}
