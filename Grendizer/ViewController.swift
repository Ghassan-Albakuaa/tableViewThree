//
//  ViewController.swift
//  Grendizer
//
//  Created by Ghassan  albakuaa  on 9/27/20.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
var cartoon = ["abc" , "asd" , "cvv" ]
var cartoon2 = ["rrr" , "yyy" , "yyy" ]
var sections = ["cartoon" , "cartoon2"]
    @IBOutlet weak var TableViewList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//how many Items
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartoon.count
        
    }
    
    // cell need identifier //and show cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = cartoon[indexPath.row]        }
      else {
        cell.textLabel?.text = cartoon2[indexPath.row]
        }
        return cell
    }
    
//how many Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count    }
   
   
    //title For Header In Section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sections[section]
    }
    
    
    
    
    
    //cell selected or add new item
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (cartoon[indexPath.row])
        cartoon.append("new item")
        TableViewList.reloadData()
    }
    */
    
}

