//
//  BaseViewController18.swift
//  Swift的控件学习
//
//  Created by 朱峰 on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
// http://blog.csdn.net/potato512/article/details/72401869
import UIKit
import Foundation
class BaseViewController18: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "通知的时候"
        //通知的使用注意事项
        //1.接收通知钱必须要移除通知,避免发送一次通知，却出现了两次或多次的响应
        //2.使用通知的类在被释放时，必须要移除通知
    }
    //发送通知了
    func sendNotification(){
        // 发送通知
        // 无参数
        // NSNotificationCenter.defaultCenter().postNotificationName("ChangeBackgroundColor", object: nil, userInfo: nil)
        
        // 带参数
        let number = 10
        let numberString = ("\(number)" as String)
        let dict = ["number":numberString];
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangeBackgroundColor"), object: dict)
    }
    //接受通知了
    func addNotification()
    {
        // 接收通知
        // 先移除通知
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "ChangeBackgroundColor"), object: nil)
        // 无参数
        // NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("notificationAction"), name: "ChangeBackgroundColor", object: nil)
        // 带参数
        NotificationCenter.default.addObserver(self, selector: Selector("notificationAction:"), name: NSNotification.Name(rawValue: "ChangeBackgroundColor"), object: nil)
    }
    // func notificationAction() // 无参数
    func notificationAction(notification:NSNotification) // 带参数
    {
        // 通知响应方法
        let color = UIColor.init(red: (((CGFloat)(arc4random() % 256) / 255.0)), green: (((CGFloat)(arc4random() % 256) / 255.0)), blue: (((CGFloat)(arc4random() % 256) / 255.0)), alpha: 1.0)
        self.view.backgroundColor = color
        
        // 参数
        let name = notification.name
        let dict = notification.object
        //let numberText = (dict as AnyObject).value("number") as! String
        //let text = "通知名称：\(name), 传值：\(numberText)"
        //labs.text = text
    }
    //
    deinit
    {
        // 移除通知
        NotificationCenter.default.removeObserver(self)
        print("\(self) 被释放了")
    }

    
}
extension BaseViewController18{
    fileprivate func setup(){
        
    }
}
