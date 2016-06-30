//
//  ThirdViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/28.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var collectionView: UICollectionView?
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!

    
    //var image = UIImage()
    
    
    var working_car_Image = ["000.png","001.png","002.png","003.png","004.png","005.png","006.png"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenSize = UIScreen.mainScreen().bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height

        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Vertical
        flowLayout.sectionInset = UIEdgeInsets(top: 20,left: 0,bottom: 10,right: 0)
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        flowLayout.itemSize = CGSizeMake(screenWidth / 3, screenWidth / 3)
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collectionView!.registerClass(CustomCell.self, forCellWithReuseIdentifier: "cell")
        collectionView!.dataSource = self
        collectionView!.delegate = self
        view.addSubview(collectionView!)
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 18
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
//        cell.title.text = "Working!";
        //cell.working_car_Image.image = UIImage(named: "000.png")
        
//        cell.image.image = UIImage(named: "000.png")
        
        cell.working_car_Image = UIImageView(image: UIImage(named: "001.png"))
//        cell.title.text = "hoge"
        cell.backgroundColor = UIColor.whiteColor()
        cell.layer.borderWidth = 0.5
        cell.frame.size.width = screenWidth / 3
        cell.frame.size.height = screenWidth / 3
    
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
