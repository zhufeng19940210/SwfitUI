//
//  BaseViewController17.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//  https://www.jianshu.com/p/3c19bcc074ed

import UIKit
class BaseViewController17: UIViewController {
    //KVO类
    class KVODemo:NSObject {
        @objc dynamic var demoDate = NSDate()
        func upateDate(){
            demoDate = NSDate()
        }
    }
    //KVC类
    class KVCDemo: NSObject{
        var data = "hello world"
    }
    //定义属性
    private var mycontent = 0
    var data = KVODemo()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "kvc,kvo"
        //调用kvc
        //KVC(是一种间接访问对象的属性)
        //通过key访问对应的属性
        //通过key设置对应的属性
        //var instance = KVCDemo()
        //访问属性
         //var  value =  instance.value(forKey: "data") as! String
        //print("value:\(value)")
        //设置属性
        //instance.setValue("hello zhufeng", forKey: "data")
        //print("\(instance.data)")
        //KVO
         //创建一个button测试下
        let btn = UIButton.init(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        self.view.addSubview(btn)
        btn.backgroundColor = UIColor.red
        btn.addTarget(self, action: #selector(btnClick(_:)), for: .touchUpInside)
        //1. 注册监听对象
        /*
         参数1:当前的属性     self
         参数2：forkeypath = "demoDate"  ---需要监听的属性
         参数3:options:.new              ---指返回的字典包含新值
         参数4:contentxt:                ---context方便传输你需要的数据，它是个指针类型
         */
        data.addObserver(self, forKeyPath: "demoDate", options: .new, context: &mycontent)
    }
    @objc func btnClick(_ btn: UIButton){
        data.upateDate()
    }
    
    deinit {
        data.removeObserver(self,forKeyPath:"demoDate")
    }
    //2.监听的方法
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("\(context!)=======\(mycontent)")
        if context == &mycontent {
            print("Changed to:(change[NSKeyValueChangeNewKey]!)")
        }
    }
}

//kvo的使用方法
extension BaseViewController17{
    fileprivate func setupKvo(){
        //建立在kvc上的机制
        //主要功能是检测对象的变化
        //这是一个完善的机制,不需要用户自己设定复杂的视图观察模式
        //对需要视图在前面加上dynamic关键字
        //var data
        
    }
}

