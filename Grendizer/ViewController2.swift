//
//  ViewController2.swift
//  Grendizer
//
//  Created by Ghassan  albakuaa  on 9/27/20.
//

import UIKit

class ViewController2: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var TableViewList: UITableView!
    
    
    var Cartoons = Array<Cartoon>()
    override func viewDidLoad() {
        super.viewDidLoad()
        Cartoons.append(Cartoon(Name: "Dice one", Des: "fghggrfjhjmhmvyju uktukyk uikykykl 8ik6ki8 tk668iout", Image: "dice1"))
        Cartoons.append(Cartoon(Name: "Dice two", Des: "fghggrfjhjmhmvyju uktukyk uikykykl 8ik6ki8 tk668iout", Image: "dice2"))
        Cartoons.append(Cartoon(Name: "Dice three", Des: "fghggrfjhjmhmvyju uktukyk uikykykl 8ik6ki8 tk668iout", Image: "dice3"))
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cartoons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! MyCellTableViewCell
        cell.laName.text = Cartoons[indexPath.row].Name!
        cell.laDes.text = Cartoons[indexPath.row].Des!
        cell.laImage.image = UIImage(named: Cartoons[indexPath.row].Image!)
        
        return cell    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
