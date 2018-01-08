//  AppDelegate.swift
//  Swift的控件学习
//  Created by 朱峰 on 2018/1/3.
//  Copyright © 2018年 朱峰. All rights reserved.
//
import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // 如果程序没有在这里写的话就要，就是去加载故事版的内容了
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // 程序将要变成活跃
        // 非活跃的状态:程序没有显在屏幕(按home键)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        //程序进入到后台
        // 按下:command + shift + h
        // 一般执行的操作就是:暂停视频／音频播放，暂停游戏；保存数据
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        // 程序将要进入到前台的时候
        //按两下:command + shift + h + h
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        //程序变的活跃的时候
        //程序启动成功后
        //程序从后台重新进入前台
        //来电打断结束
    }
    func applicationWillTerminate(_ application: UIApplication) {
        // 应用程序将要终止的时候会调用
    }
}

