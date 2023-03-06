//
//  ViewController.swift
//  MultipleTableViews
//
//  Created by sainath bamen on 28/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var tableView2: UITableView!
    
    var words1:[String] = ["Tableview","collectionview", "tableviewcell","collectionviewcell","viewcontroller","appdelegate","scenedelegate","indexpath","xibs","datastructure"]
    var words2:[String] = ["swift","xcode","functions","closures","enumeration","tuples","control statement","class","structure","protocols","extension"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
        tableView2.delegate = self
        tableView2.dataSource = self
       
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0{
            return words1.count
        }
        else{
            tableView.tag == 1
            return words2.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = words1[indexPath.row]
            return cell

        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = words2[indexPath.row]
            return cell
        }

    }
    
    
}
