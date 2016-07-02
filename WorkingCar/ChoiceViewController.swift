//
//  ChoiceViewController.swift
//  WorkingCar
//
//  Created by 森尻尭之 on 2016/07/02.
//  Copyright © 2016年 Takayuki Morijiri. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    
    let tableview: UITableView = UITableView()
    var items:[String] = ["hoge1","hoge2","hoge3","hoge4","hoge5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            tableview.frame = CGRectMake(0, 0, 320, 500)
            tableview.delegate   = self
            tableview.dataSource = self
            tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
            self.view.addSubview(tableview)
        
        
        // Do any additional setup after loading the view.
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
        
        let detailVC:DetailViewController = DetailViewController()
        self.navigationController!.pushViewController(detailVC, animated: true)
//        tableView.deselectRowAtIndexPath(indexPath, animated: true)
//        print("うわああああああああああああ")
        
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
