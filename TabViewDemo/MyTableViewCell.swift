//
//  MyTableViewCell.swift
//  TabViewDemo
//
//  Created by Rafael Gonzaga on 11/02/24.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var customImagemView: UIImageView!
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
