//
//  SearchReposViewController.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit
import APIKit

class SearchReposViewController: UITableViewController {
    @IBOutlet weak var textField: UITextField!

    let cellHeight: CGFloat = 70
    var repos: [Repository] = []
    
    static func makeInstance() -> SearchReposViewController {
        let storyboard = UIStoryboard(name: "SearchRepos", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! SearchReposViewController
        return viewController
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.title = "Search"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UINib(nibName: "RepoCell", bundle: nil), forCellReuseIdentifier: "RepoCell")
    }
    
    @IBAction func tapSearchButton(_ sender: UIButton) {
        
        let q = self.textField.text!
        let request = SearchRepositoriesRequest(q: q)
        Session.send(request) { result in
            switch result {
            case .success(let repos):
                self.repos = repos
                self.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    
        self.textField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.textField.resignFirstResponder()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return repos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepoCell", for: indexPath) as! RepoCell
        cell.fillWith(repo: repos[indexPath.row])
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
