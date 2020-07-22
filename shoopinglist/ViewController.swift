//
//  ViewController.swift
//  shoopinglist
//
//  Created by Student on 7/22/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var shoopingTableView: UITableView!
    
    let items = ["apples","bananas","grapes"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        shoopingTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = items[indexPath.row]
return cell
                                                 
    }
    

}

