//
//  ThirdViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/28.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()

        
        let btn: UIButton = UIButton()
        btn.frame = CGRectMake(140, 100, 100, 50)
        btn.backgroundColor = UIColor.blackColor()
        btn.setTitle("次へ", forState: .Normal)
        btn.addTarget(self, action: "gotoNext:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)

        // Do any additional setup after loading the view.
    }
    
    func gotoNext(sender: UIButton){
        
        let secondView: ViewController = ViewController()
        self.navigationController!.pushViewController(secondView, animated: true)
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
