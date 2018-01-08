//
//  NetworkTool.swift
//  Swift的控件学习
//
//  Created by 朱峰 on 2018/1/4.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit
class NetworkTool: NSObject {
    //单利
    static let shared = NetworkTool
    private override init() {
    }
    //其他的方法了
    func addmMethod(){
        print("addMethod")
    }
}
