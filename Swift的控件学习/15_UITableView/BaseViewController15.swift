//
//  BaseViewController15.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class BaseViewController15: UIViewController {
    //懒加载
    lazy var homeTableView : UITableView = {
        //创建tableview
        let tableView = UITableView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: .grouped)
        tableView.backgroundColor = UIColor.white
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
        //注册cell
        tableView.register(UINib.init(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        //headerView
        //tableView.register(UINib.init(nibName: "HomeHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "header")
        //footerView
        //tableView.register(UINib.init(nibName: "HomeFooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "footer")
        return tableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UITableView的使用"
        setupTableView()
    }
}
//扩展
extension BaseViewController15{
    fileprivate func setupTableView(){
        view.addSubview(homeTableView)
    }
}
//协议
extension BaseViewController15:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "fengfeng"
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "fengfeng"
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView  =  tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! HomeHeaderView
//        headerView.homeHeaderLabel.text = "zhufeng header"
//        headerView.backgroundColor = UIColor.yellow
//        return headerView
//    }
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let headerView  =  tableView.dequeueReusableHeaderFooterView(withIdentifier: "footer") as! HomeFooterView
//        headerView.backgroundColor = UIColor.red
//       headerView.homeFooterLabel.text = "zhufeng footer"
//        return headerView
//    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("\(indexPath.row)")
    }
}
