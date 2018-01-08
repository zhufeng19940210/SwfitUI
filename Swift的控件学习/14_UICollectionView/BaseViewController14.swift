//
//  BaseViewController14.swift
//  Swift的控件学习
//
//  Created by bailing on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class BaseViewController14: UIViewController {
    //设置懒加载
    lazy var homeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 50
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        let collectioView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), collectionViewLayout: layout)
        collectioView.backgroundColor = UIColor.white
        collectioView.delegate = self
        collectioView.dataSource = self
        //注册cell
        collectioView.register(UINib.init(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        //头部view的使用
        collectioView.register(UINib.init(nibName: "HomeHeaderCollectionReusableView", bundle: nil), forSupplementaryViewOfKind:"UICollectionElementKindSectionHeader" , withReuseIdentifier: "header")
        //尾部的view的使用
        collectioView.register(UINib.init(nibName: "HomeFooterCollectionReusableView", bundle: nil), forSupplementaryViewOfKind: "UICollectionElementKindSectionFooter", withReuseIdentifier: "footer")
        return collectioView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "UICollectionViewd的使用方法"
        setupView()
    }
}
extension BaseViewController14{
    fileprivate func setupView(){
        view.addSubview(homeCollectionView)
    }
}
//扩展
extension BaseViewController14:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    // 返回分数数
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    // 每个分区显示的个数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    //显示的内容了
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"cell", for: indexPath) as! HomeCollectionViewCell
        cell.backgroundColor = UIColor.red
        cell.testLabel.text = "\(indexPath.row)"
        return cell
    }
    //显示header和footer的方法
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == "UICollectionElementKindSectionHeader"{
            //头部的View
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: "UICollectionElementKindSectionHeader", withReuseIdentifier: "header", for: indexPath) as! HomeHeaderCollectionReusableView
            headerView.headerLabel.text = "header\(indexPath.section)"
            return headerView
        }else{
          //尾部的view
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: "UICollectionElementKindSectionFooter", withReuseIdentifier: "footer", for: indexPath) as! HomeFooterCollectionReusableView
            footerView.footerLabel.text = "footer\(indexPath.section)"
            return footerView
        }
    }
    //header高度
    //header高度
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*0.1)
    }
    //footer高度
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize.init(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height*0.1)
    }
}
