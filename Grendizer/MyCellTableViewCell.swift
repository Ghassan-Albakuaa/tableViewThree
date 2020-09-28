//
//  MyCellTableViewCell.swift
//  Grendizer
//
//  Created by Ghassan  albakuaa  on 9/27/20.
//

import UIKit

class MyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var laImage: UIImageView!
    @IBOutlet weak var laName: UILabel!
    @IBOutlet weak var laDes: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
