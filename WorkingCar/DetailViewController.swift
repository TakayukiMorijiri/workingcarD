//
//  DetailViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/07/01.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var workingimage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        workingimage = UIImageView(frame: CGRectMake(0, 0, 300, 200))
        let working = UIImage(named: "h1.png")
        workingimage.image = working
        workingimage.layer.position = CGPoint(x: self.view.bounds.width/2, y:180.0)
        self.view.addSubview(workingimage)
        
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.backgroundColor = UIColor.orangeColor()
        myLabel.text = "hogehogecar"
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 320)
        self.view.addSubview(myLabel)
        
        let myTextView: UITextView = UITextView(frame: CGRectMake(10, 360, self.view.frame.width - 20, 200))
        myTextView.text = "hogehoge"
        myTextView.layer.masksToBounds = true
        myTextView.layer.cornerRadius = 20.0
        myTextView.layer.borderWidth = 1
        myTextView.layer.borderColor = UIColor.blackColor().CGColor
        myTextView.font = UIFont.systemFontOfSize(CGFloat(20))
        myTextView.textColor = UIColor.blackColor()
        myTextView.textAlignment = NSTextAlignment.Left
        myTextView.editable = false
        self.view.addSubview(myTextView)
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
