//
//  BaseViewController5.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UITextFiled"
        //添加文本框
        setupUITextFiled()
    }
}
extension BaseViewController5{
    fileprivate func setupUITextFiled(){
        //1.创建文本框 // UITextField/UIControl/UIView
        let textField = UITextField(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        //2.添加到界面上去u了
        self.view.addSubview(textField)
        //设置背景颜色
         textField.backgroundColor = UIColor.red
        
        //2.再创建一个UITextFied对象
        let textField2 = UITextField(frame: CGRect(x: 100, y: 200, width: 100, height: 30))
        self.view.addSubview(textField2)
        textField2.backgroundColor = UIColor.yellow
        textField2.delegate = self
        
        //TextFiled特有的属性和方法
        textField2.text = "你好世界"
        print(textField2.text)
        //文字颜色
        textField2.textColor = UIColor.yellow
        //文字字体
        textField2.font = UIFont.systemFont(ofSize: 16)
        //设置占位文字(在输入框的时候会显示出来)
        textField2.placeholder = "请输出账号"
        //文本的对齐方式
        textField2.textAlignment = .left
        //密文显示
        textField2.isSecureTextEntry = true
        //左边视图
        let leftImaegView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        leftImaegView.image = UIImage(named: "fengfeng")
        // 这种左边视图
        textField2.leftView = leftImaegView
        textField2.leftViewMode = .always
        //键盘样式
        textField2.keyboardType = .default
        //键盘相关
        textField2.returnKeyType = .search
        // 自定义键盘
        let myInputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 256))
        myInputView.backgroundColor = UIColor.red
        textField2.inputView = myInputView
        
        //设置子键盘
         let  accessoryView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 50))
        accessoryView.backgroundColor = UIColor.black
        textField2.inputAccessoryView = accessoryView
        // 设置代理
        textField2.delegate = self
    }
}
//扩展 uitextFieldDelegate
extension BaseViewController5: UITextFieldDelegate{
    //1.当键盘点击返回按钮的时候，会自动调用
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("返回按钮点击")
        //收起键盘（结束编辑）
        //1.放弃第一响应者
        //textField.resignFirstResponder()
        return true
    }
    //2.点击textfield弹出来的键盘上的按键的时候会自动调用这个方法
    //参数1:委托
    //参数2:当前输入的字符所在的位置
    //参数3:当前输入的字符串（在键盘上按的值）
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(range)
        print(string)
        if string == "0"{
            print("进入秘密页")
        }
        return true
    }
    //3.当文本输入框已经结束编辑的时候会调用这个方法
    func textFieldDidEndEditing(textField: UITextField){
        print("已经结束编辑")
    }
    //4.开始编辑会自动调用方法
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(textField.text)
        print("已经开始编辑")
    }
    //5.当文本框将要结束编辑的时候会自动调用方法
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("将要结束")
//        if textField.text?.count >= 8 {
//            return true
//        }
        return false
    }
    //6.将要开始编辑的时候
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("将要开始编辑")
        return true
    }
}
