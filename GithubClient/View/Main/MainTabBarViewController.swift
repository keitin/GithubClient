//
//  MainTabBarViewController.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/07.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.isTranslucent = false
        self.tabBar.backgroundColor = UIColor.white
        self.tabBar.tintColor = UIColor.mainColor
        
        let profileViewController = ProfileViewController()
        profileViewController.tabBarItem.image = UIImage(named: "Contacts-50")
        profileViewController.tabBarItem.title = "profile"
        
        let reposViewController = ReposViewController()
        reposViewController.tabBarItem.image = UIImage(named: "")
        reposViewController.tabBarItem.title = "repos"
        
        self.viewControllers = [
            reposViewController,
            profileViewController
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
