//
//  HomeTableTableViewController.swift
//  Twitter
//
//  Created by Jacob on 9/27/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class HomeTableTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func onLogout(_ sender: Any) {
        TwitterAPICaller.client?.logout() // logs us out on the back, but doesn't show to the home screen.
        self.dismiss(animated: true, completion: nil) // Screen dismisses self
        UserDefaults.standard.setValue(false, forKey: "userLoggedIn") // Sets userdefault false
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell", for:indexPath)
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

   
}
