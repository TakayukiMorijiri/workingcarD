//
//  CustomCell.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/29.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
     var working_car_Image: UIImageView!

    
    
    override init(frame: CGRect){
//        print(frame.size)
        super.init(frame: frame)
        let hoge = UIImage(named: "000.png")
        self.working_car_Image = UIImageView(image: hoge)
//        self.working_car_Image.frame = CGRectMake(3, 10, 20, 80)
//        self.working_car_Image.frame.size.width = 
        self.working_car_Image.layer.masksToBounds = true
        self.layer.cornerRadius = 40
        self.addSubview(working_car_Image)
        
//        let views = ["Image":hoge]
//        self.working_car_Image.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[woking_car_Image]-0-|", options: [], metrics: nil, views: views))
//        self.working_car_Image.addConstraints(
//            NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[woking_car_Image]-0-|", options: [], metrics: nil, views: views))

        
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
