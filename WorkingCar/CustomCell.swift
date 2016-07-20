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
//        print(frame.size)
        super.init(frame: frame)
        let hoge = UIImage(named: "000.png")
        self.working_car_Image = UIImageView(image: hoge)
        self.working_car_Image.frame = CGRectMake(3, 10, 100, 80)
        self.working_car_Image.layer.masksToBounds = true
        self.layer.cornerRadius = 30
        self.addSubview(working_car_Image)
        
//        self.title = UILabel()
//        self.title.text = carTitle[indexPath.row]
//        self.title.text = "hogehoge!!"
//        self.title.frame = CGRectMake(frame.size.width / 2-100/4, 0, 100, 185)
//        self.title.frame = CGRectMake(10, 185, 100, 30)
//        self.addSubview(title)
    }
    required init(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)!
        
    }
    
    
}
