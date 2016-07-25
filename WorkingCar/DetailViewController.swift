//
//  DetailViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/07/01.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit
import MisterFusion

class DetailViewController: UIViewController,UIScrollViewDelegate {
    
    var workingimage: UIImageView!
    var carDictionary = ["category":"","name":"","description":"","image":"","id":0]
    var selectedName = ""

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
                carDictionary["description"] = data["description"] as! String
                carDictionary["image"] = data["image"] as! String
                
            }
        }
        
        self.view.backgroundColor = UIColor.whiteColor()
    
        let myTextView: UITextView = UITextView(frame: CGRectMake(10, 300, self.view.frame.width - 20, 200))

        myTextView.text = carDictionary["description"] as! String
        myTextView.layer.masksToBounds = true
        myTextView.layer.cornerRadius = 15.0
        myTextView.layer.borderWidth = 1
        myTextView.layer.borderColor = UIColor.blackColor().CGColor
        myTextView.font = UIFont.systemFontOfSize(CGFloat(20))
        myTextView.textColor = UIColor.blackColor()
        myTextView.textAlignment = NSTextAlignment.Left
        myTextView.editable = false
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.addSubview(myTextView)
        
        
        var maxHeight: CGFloat = 200.0
        if(self.view.frame.size.height == 480){
            maxHeight = 130
        }
    
        let size:CGSize = myTextView.sizeThatFits(myTextView.frame.size)
        
        if(size.height < maxHeight) {
            myTextView.frame.size.height = size.height
        }else{
            myTextView.frame.size.height = maxHeight
        }
        
        workingimage = UIImageView(frame: CGRectMake(0, 0, 300, 200))
        let working = UIImage(named: carDictionary["image"] as! String)
        workingimage.image = working
        workingimage.layer.position = CGPoint(x: self.view.bounds.width/2, y:180.0)
        self.view.addSubview(workingimage)
        
        self.navigationItem.title = carDictionary["name"] as? String
        
        // Do any additional setup after loading the view.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


