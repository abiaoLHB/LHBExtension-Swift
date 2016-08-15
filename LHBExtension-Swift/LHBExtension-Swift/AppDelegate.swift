//
//  AppDelegate.swift
//  LHBExtension-Swift
//
//  Created by LHB on 16/8/15.
//  Copyright © 2016年 LHB. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        LHBPrint("吃饭了吗")
        return true
    }
}

///全局函数，自定义打印
/*
 #if DEBUG
 #endif
 配置:Build Settings -  搜索 swift fl -固定格式写 -D (一般命名DEBUG)
 */
func LHBPrint<T>(message : T,className : String = #file,funcName : String = #function,lineNum : Int = #line) -> Void{
    #if DEBUG
    let className = (className as NSString).lastPathComponent.stringByReplacingOccurrencesOfString(".swift", withString:"")
    //print("该类:\(className)---该方法:\(funcName)---行数:\(lineNum)---打印信息:\(message)")
    print("类名:\(className)---行数:\(lineNum)---打印信息:\(message)")
    #endif
}