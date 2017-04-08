//
//  DesignedNavigationController.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit

class DesignedNavigationController: UINavigationController {
    
    override func viewDidLayoutSubviews() {
        self.navigationBar.isTranslucent = false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
