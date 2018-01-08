//
//  BaseViewController13.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController13: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UITextView"
        setupTextView()
    }
}
extension BaseViewController13{
    fileprivate func setupTextView(){
        //1.创建UITextView对象
        let textView = UITextView(frame: CGRect(x: 100, y: 100, width: 200, height: 70))
        //2.添加到视图上
        self.view.addSubview(textView)
        //3.设置背景颜色
        textView.backgroundColor = UIColor.yellow
        //4.text属性
        textView.text = "default is nil, can be userful with"
        //5.设置是否可以选中和编辑
        //默认是true->可以选中和编辑
        textView.isSelectable = true
    }
    //重写的开始的方法了
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
