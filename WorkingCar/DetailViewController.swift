//
//  DetailViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/07/01.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UIScrollViewDelegate {
    
    var workingimage: UIImageView!
    var carDictionary = ["category":"","name":"","description":"","image":"","id":0]
    var selectedName = ""
//    ------------------------------------------------------------

//    let slides = ["image":""]
//    let screen: CGRect = UIScreen.mainScreen().bounds
//    var scroll: UIScrollView?
//    var dots: UIPageControl?
    
    
//    ------------------------------------------------------------
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("\(selectedName)")
        
        let path = NSBundle.mainBundle().pathForResource("json", ofType: "")
        let jsondata = NSData(contentsOfFile: path!)
        
        let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
        
        for data in jsonArray {
            if data["name"] as! String == selectedName {
                print("\(data["name"])")
                print(data)
                carDictionary["name"] = data["name"] as! String
//                carDictionary["id"] = Int(data["id"] as! String)
                carDictionary["description"] = data["description"] as! String
                carDictionary["image"] = data["image"] as! String
//                carDictionary["category"] = data["category"] as! String
                
            }
        }
        
        self.view.backgroundColor = UIColor.whiteColor()
        
//        ---------------------------------------------------------------------------------
//        view.backgroundColor = UIColor.whiteColor()
//        scroll = UIScrollView(frame: CGRect(x: 0.0, y: 0.0, width: screen.width, height: screen.height * 0.9))
//        scroll?.showsHorizontalScrollIndicator = false
//        scroll?.showsVerticalScrollIndicator = false
//        scroll?.pagingEnabled = true
//        view.addSubview(scroll!)
//        if (slides.count > 1) {
//            dots = UIPageControl(frame: CGRect(x: 0.0, y: screen.height * 0.875, width: screen.width, height: screen.height * 0.05))
//            dots?.numberOfPages = slides.count
//            view.addSubview(dots!)
//        }
//        for i in 0 ..< slides.count {
//            if let working = UIImage(named: carDictionary["image"] as! String) {
//                let imageView: UIImageView = UIImageView(frame: getFrame(working.size.width, iH: working.size.height, slide: i, offset: screen.height * 0))
//                imageView.image = working
//                scroll?.addSubview(imageView)
//            }
//            if let text = slides[i]["text"] {
//                let textView = UITextView(frame: CGRect(x: screen.width * 0.05 + CGFloat(i) * screen.width, y: screen.height * 0.745, width: screen.width * 0.9, height: 100.0))
//                textView.text = text
//                textView.editable = false
//                textView.selectable = false
//                textView.textAlignment = NSTextAlignment.Center
//                textView.font = UIFont.systemFontOfSize(20, weight: 0)
//                textView.textColor = UIColor.whiteColor()
//                textView.backgroundColor = UIColor.clearColor()
//                scroll?.addSubview(textView)
//            }
//        }
//        scroll?.contentSize = CGSizeMake(CGFloat(Int(screen.width) *  slides.count), screen.height * 0.5)
//        scroll?.delegate = self
//        dots?.addTarget(self, action: Selector("swipe:"), forControlEvents: UIControlEvents.ValueChanged)
    
        let myLabel:UILabel = UILabel(frame: CGRectMake(0,0,280,50))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.text = carDictionary["name"] as? String
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 320)
        self.view.addSubview(myLabel)
    
        let myTextView: UITextView = UITextView(frame: CGRectMake(10, 360, self.view.frame.width - 20, 200))
        myTextView.text = carDictionary["description"] as! String
        myTextView.layer.masksToBounds = true
        myTextView.layer.cornerRadius = 20.0
        myTextView.layer.borderWidth = 1
        myTextView.layer.borderColor = UIColor.blackColor().CGColor
        myTextView.font = UIFont.systemFontOfSize(CGFloat(20))
        myTextView.textColor = UIColor.blackColor()
        myTextView.textAlignment = NSTextAlignment.Left
        myTextView.editable = false
        self.view.addSubview(myTextView)
        
        workingimage = UIImageView(frame: CGRectMake(0, 0, 300, 200))
        let working = UIImage(named: carDictionary["image"] as! String)
        workingimage.image = working
        workingimage.layer.position = CGPoint(x: self.view.bounds.width/2, y:180.0)
        self.view.addSubview(workingimage)
        
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = carDictionary["name"] as? String
        
    }
//    func pressed(sender: UIButton!) {
//        self.dismissViewControllerAnimated(true) { () -> Void in
//        }
//    }
    
    
        




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//func getFrame (iW: CGFloat, iH: CGFloat, slide: Int, offset: CGFloat) -> CGRect {
//    let mH: CGFloat = screen.height * 0.50
//    let mW: CGFloat = screen.width
//    var h: CGFloat
//    var w: CGFloat
//    let r = iW / iH
//    if (r <= 1) {
//        h = min(mH, iH)
//        w = h * r
//    } else {
//        w = min(mW, iW)
//        h = w / r
//    }
//    return CGRectMake(
//        max(0, (mW - w) / 2) + CGFloat(slide) * screen.width,
//        max(0, (mH - h) / 2) + offset,
//        w,
//        h
//    )
//}
//func swipe(sender: AnyObject) -> () {
//    if let scrollView = scroll {
//        let x = CGFloat(dots!.currentPage) * scrollView.frame.size.width
//        scroll?.setContentOffset(CGPointMake(x, 0), animated: true)
//    }
//}
//func scrollViewDidEndDecelerating(scrollView: UIScrollView) -> () {
//    let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
//    dots!.currentPage = Int(pageNumber)
//}
//override func preferredStatusBarStyle() -> UIStatusBarStyle {
//    return UIStatusBarStyle.LightContent
//}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


