//
//  ViewController.swift
//  Swift的控件学习
//
//  Created by 朱峰 on 2018/1/3.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class ViewController: UIViewController {
    //懒加载
    lazy var allContolViewNumbers: [String] = {
            return ["UIView","UILable","UIImageView","UIButton","UITextFiled","UISwitch","UISlider","UIStepper","UIProgress","UIActivityIndicatioinView","UISegment","警告栏","UITextView","UICollectionView","UITableView","GCD","KVC/KVO","Notification"]
    }()
    //懒加载的使用
    lazy var homeTableView : UITableView = {
        let tableView = UITableView()
        tableView.frame = UIScreen.main.bounds
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化界面
        self.title = "Swift的UI控件"
        view.backgroundColor = UIColor.white
        setupView()
    }
}
// 添加拓展
extension ViewController{
    fileprivate func setupView(){
        view.addSubview(homeTableView)
    }
}
//添加拓展添加协议
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allContolViewNumbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //重用cell的机制
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text  = allContolViewNumbers[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0{
            let baseVc = BaseViewController()
            self.navigationController?.pushViewController(baseVc, animated: true)
        }
        if indexPath.row == 7{
            let baseVc7 = BaseViewController8()
            self.navigationController?.pushViewController(baseVc7, animated: true)
        }
        if indexPath.row == 8{
            let baseVc8 = BaseViewController9()
            self.navigationController?.pushViewController(baseVc8, animated: true)
        }
        if indexPath.row == 9{
            
            let baseVc9 = BaseViewController10()
            self.navigationController?.pushViewController(baseVc9, animated: true)
        }
        if indexPath.row == 10{
            let baseVc10 = BaseViewController11()
            self.navigationController?.pushViewController(baseVc10, animated: true)
        }
        if indexPath.row == 11{
            
            let baseVc11 = BaseViewController12()
            self.navigationController?.pushViewController(baseVc11, animated: true)
        }
        if indexPath.row == 13{
            let baseVc13 = BaseViewController14()
            self.navigationController?.pushViewController(baseVc13, animated: true)
        }
        if indexPath.row == 14{
            let baseVc14 = BaseViewController15()
            self.navigationController?.pushViewController(baseVc14, animated: true)
        }
        if indexPath.row == 16{
            
            let baseVc17 = BaseViewController17()
            self.navigationController?.pushViewController(baseVc17, animated: true)
        }
    }
}
