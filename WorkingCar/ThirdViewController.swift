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
    var selectedIndex = -1

    
    //var image = UIImage()
    
    
    var working_car_Image = ["000.png","001.png","002.png","003.png","004.png","005.png","006.png","007.png"]
    var carTitle = ["ショベル","ダンプ","クレーン","ゴミ収集車","ホイールローダー","ユニック","トレーラー","その他"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor.whiteColor()
        screenSize = UIScreen.mainScreen().bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height

        
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .Vertical
        flowLayout.sectionInset = UIEdgeInsets(top: 0,left: 0,bottom: 10,right: 0)
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
        return 8
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell : CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        
        cell.working_car_Image.image = UIImage(named: "00\(indexPath.row).png")
        cell.title.text = carTitle[indexPath.row]
        cell.backgroundColor = UIColor.whiteColor()
        cell.layer.borderWidth = 1.0
        cell.frame.size.width = screenWidth / 3
        cell.frame.size.height = screenWidth / 3
    
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let categoryVC:CategoryViewController = CategoryViewController()
        self.navigationController!.pushViewController(categoryVC, animated: true)
        
        selectedIndex = indexPath.row
        categoryVC.selectedIndex = selectedIndex
        
        print("\(indexPath.row)")
        
        
        
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
