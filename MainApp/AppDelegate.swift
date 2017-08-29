//
//  AppDelegate.swift
//  MainApp
//
//  Created by Jose Aponte on 8/29/17.
//  Copyright © 2017 Tappsi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var currentUnityController: UnityAppController?
    var application: UIApplication?
    var isUnityRunning = false
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        self.application = application
        unity_init(CommandLine.argc, CommandLine.unsafeArgv)
        currentUnityController = UnityAppController()
        currentUnityController!.application(application, didFinishLaunchingWithOptions: launchOptions)
        
        // first call to startUnity will do some init stuff, so just call it here and directly stop it again
        startUnity()
        stopUnity()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        if isUnityRunning {
            currentUnityController?.applicationWillResignActive(application)
        }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        if isUnityRunning {
            currentUnityController?.applicationDidEnterBackground(application)
        }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        if isUnityRunning {
            currentUnityController?.applicationWillEnterForeground(application)
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        if isUnityRunning {
            currentUnityController?.applicationDidBecomeActive(application)
        }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        if isUnityRunning {
            currentUnityController?.applicationWillTerminate(application)
        }
    }
    
    func startUnity() {
        if !isUnityRunning {
            isUnityRunning = true
            currentUnityController!.applicationDidBecomeActive(application!)
        }
    }
    
    func stopUnity() {
        if isUnityRunning {
            currentUnityController!.applicationWillResignActive(application!)
            isUnityRunning = false
        }
    }
}

