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
        print(frame.size)
        super.init(frame: frame)
        let hoge = UIImage(named: "000.png")
        self.working_car_Image = UIImageView(image: hoge)
        self.addSubview(working_car_Image)
        self.title = UILabel()
        self.title.text = "shokika"
        self.title.frame = CGRectMake(frame.size.width / 2-100/4, 0, 100, 200)
        self.addSubview(title)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        
    }
    
    
}
