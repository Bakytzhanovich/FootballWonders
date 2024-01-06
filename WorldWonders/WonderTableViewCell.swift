//
//  WonderTableViewCell.swift
//  WorldWonders
//
//  Created by Нурсат Шохатбек on 06.01.2024.
//

import UIKit
import SDWebImage

class WonderTableViewCell: UITableViewCell {
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var leagueLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var flagImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(wonder: FootballWonder) {
        teamNameLabel.text = wonder.teamName
        leagueLabel.text = wonder.league
        locationLabel.text = wonder.location
        
        pictureImageView.sd_setImage(with: URL(string: wonder.picture), completed: nil)
        flagImageView.sd_setImage(with: URL(string: wonder.flag), completed: nil)
    }

}
