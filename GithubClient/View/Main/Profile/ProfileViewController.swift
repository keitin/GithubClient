//
//  ProfileViewController.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/07.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import APIKit

class ProfileViewController: UITableViewController {
    
    var user: User!
    let profileCellHeight: CGFloat = 311
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.title = "Profile"
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.user = CurrentUser.sharedInstance.user
        self.tableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        cell.fillWith(user: user)
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return profileCellHeight
    }
    
    
}
