//
//  SingUpViewController.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/07.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import APIKit
import Result

final class SignUpViewController: UIViewController {

    static func makeInstance() -> SignUpViewController {
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! SignUpViewController
        return viewController
    }
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var logInButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapLogInButtom(_ sender: UIButton) {
        let request = GetUserRequest(userName: "keitin")
        Session.send(request) { result in
            switch result {
            case .success(let user):
                let mainTabBarViewController = MainTabBarViewController()
                UIApplication.shared.keyWindow?.rootViewController = mainTabBarViewController
            case .failure(let error):
                print(error)
            }            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
