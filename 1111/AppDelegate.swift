//
//  AppDelegate.swift
//  1111
//
//  Created by liucl on 2022/12/3.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var test: String = ""
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        test.append(#function)
        print(#function)
        test.append("\n")
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        test.append(#function)
        print(#function)
        test.append("\n")
        
        UserDefaults.standard.setValue(test, forKey: "111")
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func applicationWillTerminate(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationWillResignActive(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationDidBecomeActive(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationWillEnterForeground(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationProtectedDataDidBecomeAvailable(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func applicationProtectedDataWillBecomeUnavailable(_ application: UIApplication) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        return true
    }
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
    }
    
}

