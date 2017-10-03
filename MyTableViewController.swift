//
//  MyTableViewController.swift
//  TableViewTest
//
//  Created by kobe on 2017/9/17.
//  Copyright © 2017年 kobe. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //UINavigationBar.appearance().bar
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    
    //var imageSets = [UIImage]()
    var imageSets = [UIImage?](repeating: nil, count: 10)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        
        return 10
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = indexPath.row % 2
    
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell\(cellType)", for: indexPath) as! MyTableViewCell
        
        if let image = imageSets[indexPath.row]
        {
            print("row=\(indexPath.row) alrady existed.")
            
            cell.myImageView.image = image//UIImage(data: data as! Data)
            if(cellType == 0){
                
                cell.myImageVIew2.image = image
            }
        }
        else{
            
             print("row=\(indexPath.row) not existed. downloaded it.")
            let url = URL(string: "http://az616578.vo.msecnd.net/files/2016/05/02/635977562108560005-679443365_kobe.jpg")
            let data = NSData(contentsOf: url!)
        
            let img = UIImage(data: data as! Data)

            
            imageSets.insert(img, at: indexPath.row)
            cell.myImageView.image = img//UIImage(data: data as! Data)
            
            if cellType==0{
                cell.myImageVIew2.image = img
            }
        }
        
        // Configure the cell...

        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
