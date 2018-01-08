//
//  BaseViewController.swift
//  Swift的控件学习
//
//  Created by 朱峰 on 2018/1/3.
//  Copyright © 2018年 朱峰. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    //懒加载的东西
    lazy var subView :UIView = {
        //1.创建一个视图
        let subView = UIView()
        subView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        subView.backgroundColor = UIColor.blue
        return subView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UIView的使用"
        view.backgroundColor = UIColor.white
        /*
         UIview的定义：
         是ios中所有视图（控件）直接/间接的父类；所以uiview的属性和方法，对于其他类型的视图都有效
         视图：在屏幕上能看见的所有东西属于视图
         */
        //1.创建视图
        //setupView()
        //2.动画
        setupView2()
    }
    
    // MARK -- 1.创建视图
    func setupView(){
    //1.创建UIView对象
    let redView = UIView.init()
    //2.设置frame属性(坐标(x,y)和大小(width,height))
    redView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
    //3.把视图添加到界面上
    self.view.addSubview(redView)
    //4.设置背景颜色
    // CGFloat是ui中的浮点型
    //通过类型方法创建指定颜色
    redView.backgroundColor = UIColor.red
    //创建颜色(red,green,blue)
    //redView.backgroundColor = UIColor.init(red: 30/255.0, green: 133/255.0, blue: 26/255.0, alpha: 1)
    //形变(transform)
    redView.transform =  CGAffineTransform(scaleX: 0.5, y: 0.5)
    //旋转
    redView.transform = CGAffineTransform(rotationAngle: CGFloat( M_PI_4))
    //层次关系
    //1.将指定的视图加载到最上层
    self.view.bringSubview(toFront: redView)
    //2.最下层
    self.view.sendSubview(toBack: redView)
    //3.指定视图到另外一个视图上面
    self.view.insertSubview(redView, aboveSubview: redView)
    //指定的视图到另外视图下面
    self.view.insertSubview(redView, belowSubview: redView)
    
    }
    // MARK -- 2.动画
    func setupView2(){
       self.view.addSubview(subView)
        //UIViewAnimation1()
        layearAction()
        UIViewAnimation2()
    }
    // MARK: --3.动画的函数
    /*
     参数1:动画时间
     参数2:延时时间
     参数3:整个动画完成之后自动调用方法
     */
    func UIViewAnimation1(){
        UIView.animate(withDuration: 2, animations: {
            //二维形变 CGAffineTransform translationX 平移 (矩阵相加)
            //x:右边是正方向
            //y:下边是正方向
            //x:为正数的时候就是往右移动
            //y:为正数的时候就是往下移动
            // CGAffineTransform rotationAngle 为旋转 (矩阵相乘)
            //当angle为正值时,逆时针旋转坐标系统,反之顺时针旋转坐标系统
            self.subView.transform = CGAffineTransform(translationX: 0, y: 300)
            //self.subView.transform = CGAffineTransform(rotationAngle: CGFloat( M_PI_4))
        }) { (_) -> Void in
            //动画结束需要执行的代码
            UIView.animate(withDuration: 3, animations: {
                self.subView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI_4))
                self.subView.transform=CGAffineTransform(translationX: 0, y: 0)
            })
        }
    }
    func UIViewAnimation2(){
        UIView.animate(withDuration: 1, delay: 0.5, options: [ .repeat, .autoreverse,.curveEaseInOut], animations: {
            self.subView.alpha = 0.6
            self.subView.transform = CGAffineTransform(translationX: 0, y: 200)
            self.subView.transform = CGAffineTransform(rotationAngle: CGFloat(360))
            self.subView.backgroundColor = UIColor.green
        }, completion: nil)
    }
    //layer的使用
    func layearAction(){
        self.subView.layer.cornerRadius = 20
        //设置边框
        self.subView.layer.borderWidth = 3
    }
}
