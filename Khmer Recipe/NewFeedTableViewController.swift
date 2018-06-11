//
//  NewFeedTableViewController.swift
//  Khmer Recipe
//
//  Created by BunnY24 on 6/11/18.
//  Copyright © 2018 BunnY24. All rights reserved.
//

import UIKit
import Firebase

class NewFeedTableViewController: UITableViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let db = Firestore.firestore()
        db.collection("users").document("1").getDocument { (result, error) in
            DispatchQueue.main.async {
                if error != nil {
                    self.showAlertMessage(title: "Error", message: "Error while loading Profile")
                }else{
                    let data = result!.data()!
                    let firstName = data["firstName"] as! String
                }
            }
            
        
        
    }
    
    
}
    func showAlertMessage (title: String, message: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil )
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        
    }
}

