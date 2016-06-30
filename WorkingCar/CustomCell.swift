//
//  CustomCell.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/29.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
     var title: UILabel!
     var working_car_Image: UIImageView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        let hoge = UIImage(named: "001.pmg")
        working_car_Image = UIImageView(image: hoge)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
    }
    
    
}
