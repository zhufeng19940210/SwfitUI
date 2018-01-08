//
//  BaseViewController2.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class BaseViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UILabel的使用"
        setupLabel()
    }
}
//添加UILabel
extension BaseViewController2{
    fileprivate func setupLabel(){
        //1.创建label对象
        let label = UILabel(frame: CGRect(x: 10, y: 64, width: 200, height: 100))
        //2.添加到视图上
        self.view.addSubview(label)
        //3.设置文字
        label.text = "附近的时空裂缝几点睡可了付款的是浪费"
        print("label:\(label.text)")
        //4.设置字体的大小
        label.font = UIFont.systemFont(ofSize: 16)
        //粗体
        label.font = UIFont.boldSystemFont(ofSize: 16)
        //字体大小，字体粗细
        label.font = UIFont.systemFont(ofSize: 36, weight: UIFont.Weight(rawValue: 6))
        //设置文本背景颜色
        label.textColor = UIColor.red
        //设置阴影颜色
        label.shadowColor = UIColor.blue
        //设置偏移量
        label.shadowOffset.height = 6
        label.shadowOffset.width = 6
        //对齐方式(左边，右边，居中)
        label.textAlignment = .center
        //设置行数
        label.numberOfLines = 15
        //自动换行
        label.numberOfLines = 0
        //设置换行模式 ByWordWrapping以单词为单位换行,ByCharWrapping 以字符为单位换行
        label.lineBreakMode = .byCharWrapping
        //补充：
        /*
        1.将ttf文件拖到工程中
        2.在info.plist文件中添加键值对 Fontsprovided by appli 将字体添加到系统字体库
        3.通过提供系统名的构造方法取创建字体（要先找到自己添加的字体的字体名
        */
        //根据文字设置label的大小
        let str = "ikdh"
        //将swif中的字符串转成oc的字符串
        let ocStr = str as NSString
        //2.计算字符串的大小
        /*
         参数1：限制显示当前字符串的最大宽度和长度
         参数2：渲染方式（UsesLineFragmentOrigin）
         参数3：确定文字字体大小(NSFontAttributeName)字体对应的Key值  NSForegroundColorAttributeName颜色值
         参数4：
        */
        //CGSize(width: 200, height: 200)
        let strSize =  ocStr.boundingRect(with: CGSize(width: 200, height: 200), options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font:UIFont.systemFont(ofSize: 17)], context: nil)
        print(strSize)
    }
}
