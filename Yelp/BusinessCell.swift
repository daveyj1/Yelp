//
//  BusinessCell.swift
//  Yelp
//
//  Created by Joseph Davey on 1/22/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            if business.imageURL != nil {
                photoView.setImageWith(business.imageURL!)
            }
            descriptionLabel.text = business.categories
            addressLabel.text = business.address
            distanceLabel.text = business.distance
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            ratingImage.setImageWith(business.ratingImageURL!)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        photoView.layer.cornerRadius = 5
        photoView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
