//
//  MyTableViewCell.swift
//  TableViewTest
//
//  Created by kobe on 2017/9/17.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    //@IBOutlet weak var myImageVIew: UIImageView!
    
    @IBOutlet weak var myImageVIew2: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //將cell內縮10, 並且cell有圓角
    override var frame: CGRect {
        get {
            return super.frame
        }
        set {
            var frame = newValue
            frame.origin.x += 10
            frame.size.width -= 2 * frame.origin.x;
            frame.size.height -= 2 * frame.origin.x;
            
           
            
            self.layer.masksToBounds = true;
            self.layer.cornerRadius = 5.0;
            //frame.size.width -= 2 * 25
            
            super.frame = frame
        }
    }
}
