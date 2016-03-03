//
//  GithubRepoCell.swift
//  Gitzone
//
//  Created by Philippe Kimura-Thollander on 2/17/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class GithubRepoCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starsImageView: UIImageView!
    @IBOutlet weak var starsLabel: UILabel!
    @IBOutlet weak var branchImageView: UIImageView!
    @IBOutlet weak var branchLabel: UILabel!
    
    var repo: GithubRepo! {
        didSet {
            titleLabel.text = repo.name
            authorLabel.text = "by \(repo.ownerHandle!)"
            descriptionLabel.text = repo.repoDescription
            avatarImageView.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
            starsLabel.text = String(repo.stars!)
            branchLabel.text = String(repo.forks!)
        }

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
