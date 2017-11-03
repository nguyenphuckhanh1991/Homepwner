
//  AppDelegate.swift
//  Homepwner
//
//  Created by nguyen.phuc.khanh on 11/1/17.
//  Copyright © 2017 nguyen.phuc.khanh. All rights reserved.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //Create an ItemStore
    let itemStore = ItemStore()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {
        // Override point for customization after application launch.

        //Create an ImageStore
        let imageStore = ImageStore()
        //Access the ItemsViewController and set its item store and image store
        let navController = window!.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        itemsController.imageStore = imageStore
        print(#function)
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print(#function)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print(#function)
        let success = itemStore.saveChanges()
        if success {
            print("Saved all of the Items")
        } else {
            print("Could not have any of the Items")
        }
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print(#function)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print(#function)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print(#function)
    }
}

