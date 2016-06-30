//
//  CustomCell.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/29.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var working_car_Image: UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    
    
}
