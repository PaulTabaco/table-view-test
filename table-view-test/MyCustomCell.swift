//
//  MyCustomCell.swift
//  table-view-test
//
//  Created by Paul on 03.01.16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class MyCustomCell: UITableViewCell {
    
    @IBOutlet weak var cellImage:UIImageView!
    @IBOutlet weak var cellLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5.0
        clipsToBounds = true
        cellImage.layer.cornerRadius = 15.0
        cellImage.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(image:UIImage, text:String) {
        cellImage.image = image
        cellLbl.text = text
    }

}
