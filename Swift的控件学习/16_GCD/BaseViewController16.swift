//
//  BaseViewController16.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class BaseViewController16: UIViewController {
    lazy var testBtn : UIButton = {
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        btn.setTitle("GCD", for: .normal)
        btn.backgroundColor = UIColor.white
        btn.setTitleColor(UIColor.black, for: .normal)
        //添加事件了
        //btn.addTarget(self, action: #selector(testGCD(_:)), for: .touchUpInside)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "GCD的使用方法"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension BaseViewController16{
    // 学习的网址的东西了
    //https://www.cnblogs.com/csdnIOS/p/6874839.html
    func testGCD(_ btn: UIButton){
        //1.GCD的使用1.
        //使用的方法：在子耗时操作，主线程刷新界面
//        let queue = DispatchQueue(label: "com.zhufeng.txt")
//        queue.async {
//
//        }
        //全局的串行队列
        DispatchQueue.global().async {
            //耗时操作
            let url = URL(string: "http://img-arch.pconline.com.cn/images/upload/upc/tx/photoblog/1107/05/c5/8235345_8235345_1309860279806.jpg")!
            if let imageData = try? Data(contentsOf: url) {  //从网上取数据,属于耗时操作
                let tmpimage = UIImage(data: imageData as Data)  //二进制数据转换为图片，属于耗时
            DispatchQueue.main.async {
                //回到主线程了
//                self.image = tmpimage
//                self.imageView.image = self.image
            }
        }
   
    }
}
}
