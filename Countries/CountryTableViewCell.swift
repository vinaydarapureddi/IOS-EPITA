//
//  CountryTableViewCell.swift
//  Countries
//
//  Created by Vinay on 21/08/2020.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var imageCountry: UIImageView!
    @IBOutlet weak var labelContryName: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
