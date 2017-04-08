//
//  RepoCell.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func fillWith(repo: Repository) {
        self.nameLabel.text = repo.name
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
