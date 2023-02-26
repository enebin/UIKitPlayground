//
//  AppDelegate.swift
//  UIKitPlayground
//
//  Created by 이영빈 on 2022/12/23.
//

import UIKit

import RxCocoa
import RxSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(Bundle.main)
        print(URL.documentsDirectory)
        print(Bundle.main.path(forResource: "mountain", ofType: "png"))
        
        return true
    }
}
