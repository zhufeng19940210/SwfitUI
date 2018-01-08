//
//  BaseViewController3.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class BaseViewController3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UIImageView的使用"
        //创建uiimageView
        setupImagView()
    }
    // 图片的一个连续的动画了
    func CreateImage(){
        //1.创建一个UIImageView
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imageView.image = UIImage(named: "zhufeng.png")
        //2.使用uiimageView播放帧动画
        //2.1设置帧动画数组
        var imageArray = [UIImage]()
        for i in 0...18{
            let imagename = "love\(i).png"
            let image = UIImage(named: imagename)
            imageArray.append(image!)
        }
        //帧动画的动画组
        imageView.animationImages = imageArray
        //设置动画世界 单位秒
        imageView.animationDuration = 0.5
        //设置动画重复的次数 (0,无线循环)
        imageView.animationRepeatCount = 0
        //开始动画
        imageView.startAnimating()
        //停止动画
        imageView.stopAnimating()
    }
}
//添加扩展
extension BaseViewController3{
    fileprivate func setupImagView(){
        //创建UIImageView
         let img = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //添加到界面
        self.view.addSubview(img)
        // 2.通过图片去创建一个对象,图片的名称
        //img.image = UIImage(named: "")
        //指定到包的文件路径
        //let k = Bundle.main.path(forResource: "zhufeng", ofType: "png")
        //img.image = UIImage(contentsOfFile: k)
        //3.设置图片内容模式
        img.contentMode = .scaleToFill
    }
}
