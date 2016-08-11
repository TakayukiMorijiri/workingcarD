//
//  ViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/27.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit
import MisterFusion
//import GoogleMobileAds

class ViewController: UIViewController {
    
    let AdMobID = "ca-app-pub-3530000000000000/0123456789"
    let TEST_DEVICE_ID = "61b0154xxxxxxxxxxxxxxxxxxxxxxxe0"
    let AdMobTest:Bool = true
    let SimulatorTest:Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.hidesBackButton = true
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = false
        
        let btn_back = UIBarButtonItem()
        btn_back.title = ""
        self.navigationItem.backBarButtonItem = btn_back
        
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFontOfSize(25)
        label.text = "検索方法"
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.whiteColor()
        label.sizeToFit()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0
        label.textAlignment = NSTextAlignment.Center
        self.view.addLayoutSubview(label,andConstraints:
            label.Top |+| 100,
            label.Right |-| 50,
            label.Left |+| 50
        )
        
        let btn: UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = true
        btn.backgroundColor = UIColor.blackColor()
        btn.layer.cornerRadius = 20
        btn.frame = CGRectMake(0, 0, 200, 60)
        btn.layer.position = CGPoint(x: self.view.frame.size.width/2,y: 200)
        btn.setTitle("あいうえお順", forState: .Normal)
        btn.addTarget(self, action: "gotoSecond:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        let btn1: UIButton = UIButton()
        btn1.translatesAutoresizingMaskIntoConstraints = true
        btn1.layer.cornerRadius = 20
        btn1.frame = CGRectMake(0, 0, 200, 60)
        btn1.layer.position = CGPoint(x:self.view.frame.size.width/2, y: 300)
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("アイコン", forState: .Normal)
        btn1.addTarget(self, action: "gotoThird:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        let btn2: UIButton = UIButton()
        btn2.translatesAutoresizingMaskIntoConstraints = true
        btn2.backgroundColor = UIColor.brownColor()
        btn2.layer.cornerRadius = 20
        btn2.frame = CGRectMake(0, 0, 200, 60)
        btn2.layer.position = CGPoint(x: self.view.frame.size.width/2, y: 400)
        btn2.setTitle("カメラ", forState: .Normal)
        btn2.addTarget(self, action: "", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn2)
        
        
        let Image = UIImageView()
        Image.image = UIImage(named: "bci.png")
        Image.translatesAutoresizingMaskIntoConstraints = false
        let BoundSize_w: CGFloat = UIScreen.mainScreen().bounds.width
        let BoundSize_h: CGFloat = UIScreen.mainScreen().bounds.height
        self.view.addLayoutSubview(Image,andConstraints:
            Image.Top |+| 450,
            Image.Bottom |-| 50,
            Image.Right |+| 0,
            Image.Left |-| 0
        )
        
        
//        ---------広告実装----------------------------------------------------------------------------
//        var admobView: GADBannerView = GADBannerView()
//        admobView = GADBannerView(adSize:kGADAdSizeBanner)
//        admobView.frame.origin = CGPointMake(0, self.view.frame.size.height - admobView.frame.height)
//        
//        admobView.frame.size = CGSizeMake(self.view.frame.width, admobView.frame.height)
//        admobView.adUnitID = AdMobID
//        admobView.rootViewController = self
//        
//        let admobRequest:GADRequest = GADRequest()
//        
//        if AdMobTest {
//            if SimulatorTest {
//                admobRequest.testDevices = [kGADSimulatorID]
//            }
//            else {
//                admobRequest.testDevices = [TEST_DEVICE_ID]
//            }
//            
//        }
//        
//        admobView.loadRequest(admobRequest)
//        
//        self.view.addSubview(admobView)
//        -------------------------------------------------------------------------------------------
        
    }

    
    func gotoSecond(sender: UIButton){
        
        let secondView: SecondViewController = SecondViewController()
        self.navigationController!.pushViewController(secondView, animated: true)
    }
    
    func gotoThird(sender: UIButton){
        
        let ThirdView: ThirdViewController = ThirdViewController()
        self.navigationController!.pushViewController(ThirdView, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

