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
    
    
    
    
//    var Image1:UIImageView!
//    var Image2:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.navigationController?.navigationBarHidden = false
        
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
        self.view.addSubview(label)
        
        let btn: UIButton = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.orangeColor()
        btn.setTitle("あいうえお順", forState: .Normal)
        btn.addTarget(self, action: "gotoSecond:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        
        let btn1: UIButton = UIButton()
        btn1.translatesAutoresizingMaskIntoConstraints = false
        btn1.backgroundColor = UIColor.blackColor()
        btn1.setTitle("アイコン", forState: .Normal)
        btn1.addTarget(self, action: "gotoThird:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn1)
        
        let Image = UIImageView()
        Image.image = UIImage(named: "bci.png")
        Image.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(Image)
        
        let viwes = ["label":label,"btn": btn,"btn1": btn1,"Image": Image]
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-50-[label]-50-|", options: .AlignAllTop, metrics: nil, views: viwes))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-90-[label]-450-|", options: .AlignAllTop, metrics: nil, views: viwes))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-60-[btn]-60-|", options: .AlignAllTop, metrics: nil, views: viwes))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-140-[btn]-380-|", options: .AlignAllTop, metrics: nil, views: viwes))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-60-[btn1]-60-|", options: .AlignAllTop, metrics: nil, views: viwes))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-220-[btn1]-300-|", options: .AlignAllTop, metrics: nil, views: viwes))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "|-2-[Image]-0-|",options: .AlignAllTop,metrics: nil,views: viwes))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|-350-[Image]-100-|",options: .AlignAllTop,metrics: nil,views: viwes))
        
//        Image1 = UIImageView(frame: CGRectMake(10, 0, 300, 50))
//        let myImage1 = UIImage(named: "")
//        Image1.image = myImage
//        self.view.addSubview(Image2)
//        
//        Image2 = UIImageView(frame: CGRectMake(200, 0, 300, 50))
//        let myImage2 = UIImage(named: "")
//        Image2.image = myImage
//        self.view.addSubview(Image2)
        
        
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

