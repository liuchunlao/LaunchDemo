//
//  SceneDelegate.swift
//  1111
//
//  Created by liucl on 2022/12/3.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    var test = UserDefaults.standard.string(forKey: "111") ?? ""

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        let url = connectionOptions.urlContexts.first?.url
        
        // MARK: - 杀死后，启动app走这里
        if url?.scheme == "launchapp" {
            test.append(url?.host ?? "无")
            test.append("\n")
            
            if url?.host == "showme_ios" {
                let linkParams = url?.parametersFromQueryString
                test.append(linkParams?["data"] ?? "未获取")
                test.append("\n")
            }
        }
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        
        // MARK: - 未被杀死，再次唤醒app走这里
        test.append(#function)
        print(#function)
        test.append("\n")
        
        UserDefaults.standard.setValue(test, forKey: "111")
    }
    func scene(_ scene: UIScene, didUpdate userActivity: NSUserActivity) {
        
        test.append(#function)
        print(#function)
        test.append("\n")
        UserDefaults.standard.setValue(test, forKey: "111")
    }

}


extension URL {
    /// 从地址中获取参数
    public var parametersFromQueryString : [String: String]? {
        guard let components = URLComponents(url: self, resolvingAgainstBaseURL: true),
        let queryItems = components.queryItems else { return nil }
        return queryItems.reduce(into: [String: String]()) { (result, item) in
            result[item.name] = item.value
        }
    }
}


