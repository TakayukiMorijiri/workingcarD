//
//  SecondViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/06/28.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    let tableview: UITableView = UITableView()
    let items = ["あ行","か行","さ行","た行","な行","は行","ま行","や行","ら行","わ行"]
    var selectedIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.frame = CGRectMake(0, 0, 320, 500)
        tableview.delegate   = self
        tableview.dataSource = self
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tableview)

             // Do any additional setup after loading the view.
    }
    
    func gotoNext(sender: UIButton){
        
        let secondView: SecondViewController = SecondViewController()
        self.navigationController!.pushViewController(secondView, animated: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return self.items.count
    }

    func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath:indexPath) as UITableViewCell
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let choiceVC:ChoiceViewController = ChoiceViewController()
        self.navigationController!.pushViewController(choiceVC, animated: true)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        selectedIndex = indexPath.row
        choiceVC.selectedIndex = selectedIndex
        
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
