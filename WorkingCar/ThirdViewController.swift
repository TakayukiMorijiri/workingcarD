//
//  ThirdViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/28.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
    
    @IBOutlet weak var myCollection: UICollectionView!
    
    //var image = UIImage()
    
    
    var working_car_Image = ["000.png","001.png","002.png","003.png","004.png","005.png","006.png"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.scrollDirection = .Vertical
//        flowLayout.minimumInteritemSpacing = 5.0
//        flowLayout.minimumLineSpacing = 5.0
//        flowLayout.itemSize = CGSizeMake(105, 150)
        
        myCollection = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        myCollection.registerClass(CustomCell.self, forCellWithReuseIdentifier: "cell")
        myCollection.dataSource = self
        myCollection.delegate = self
        view.addSubview(myCollection)
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return working_car_Image.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
//        cell.title.text = "Working!";
        cell.working_car_Image.image = UIImage(named: "000.png")
        cell.backgroundColor = UIColor.whiteColor()
    
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
