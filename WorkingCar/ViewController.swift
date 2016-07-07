//
//  ViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/27.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit
//import GoogleMobileAds

class ViewController: UIViewController {
    
//    let AdMobID = "ca-app-pub-3530000000000000/0123456789"
//    let TEST_DEVICE_ID = "61b0154xxxxxxxxxxxxxxxxxxxxxxxe0"
//    let AdMobTest:Bool = true
//    let SimulatorTest:Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = false
        
        let label: UILabel = UILabel(frame: CGRectMake(0, 0, 300, 50))
        label.font = UIFont.systemFontOfSize(25)
        label.text = "検索方法"
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.whiteColor()
        label.sizeToFit()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0
        label.textAlignment = NSTextAlignment.Center
        label.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        self.view.addSubview(label)
        
        let btn: UIButton = UIButton()
        btn.frame = CGRectMake(60, 150, 200, 50)
        btn.backgroundColor = UIColor.orangeColor()
        btn.setTitle("あいうえお順", forState: .Normal)
        btn.addTarget(self, action: "gotoSecond:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        let btn1: UIButton = UIButton()
        btn1.frame = CGRectMake(60, 250, 200, 50)
        btn1.backgroundColor = UIColor.blackColor()
        btn1.setTitle("アイコン", forState: .Normal)
        btn1.addTarget(self, action: "gotoThird:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        let image: UIImage = UIImage()
        
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

