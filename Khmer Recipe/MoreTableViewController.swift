//
//  MoreTableViewController.swift
//  Khmer Recipe
//
//  Created by BunnY24 on 5/28/18.
//  Copyright © 2018 BunnY24. All rights reserved.
//

import UIKit

class MoreTableViewController: UITableViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell_Feedback")!
        return cell
    }

  
  

}
