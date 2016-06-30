//
//  ZeroViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/28.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ZeroViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initImageView()
        
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        
        let label: UILabel = UILabel(frame: CGRectMake(0, 0, 300, 50))
        label.font = UIFont.systemFontOfSize(30)
        label.text = "はたらくるま"
        label.textColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.blackColor()
        label.sizeToFit()
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10.0
        label.textAlignment = NSTextAlignment.Center
        label.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        self.view.addSubview(label)
        
        
        let btn: UIButton = UIButton()
        btn.frame = CGRectMake(60, 500, 200, 50)
        btn.backgroundColor = UIColor.orangeColor()
        btn.setTitle("ひらく", forState: .Normal)
        btn.addTarget(self, action: "gotoView:", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
    }
    
    func gotoView(sender: UIButton){
        
        let viewController: ViewController = ViewController()
        self.navigationController!.pushViewController(viewController, animated: true)
    }
    
    func initImageView(){
        // UIImage インスタンスの生成
        let image1:UIImage? = UIImage(named:"素材.png")
        
        // UIImageView 初期化
        let imageView = UIImageView(image:image1)
        
        // 画像の中心を設定
        imageView.center = CGPointMake(187.5, 333.5)
        
        // UIImageViewのインスタンスをビューに追加
        self.view.addSubview(imageView)
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
    }
    
//    func animatedImage(target:UIImage){
//        let timePerSecond = 30.0 / view.bounds.size.width
//        
//        // 画像の位置から画面右までにかかる時間の計算
//        let remainTime = (view.bounds.size.width - target.frame.origin.x) * timePerSecond
//        
//        // アニメーション
//        UIView.transitionWithView(target, duration: NSTimeInterval( remainTime), options: .CurveLinear, animations: { () -> Void in
//            
//            // 画面右まで移動
//            target.frame.origin.x = self.view.bounds.width
//            
//            }, completion: { _ in
//                
//                // 画面右まで行ったら、画面左に戻す
//                target.frame.origin.x = -target.bounds.size.width
//                
//                // 再度アニメーションを起動
//                self.animateImage(target)
//        })
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        animateImage(imageView)
//    }

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
