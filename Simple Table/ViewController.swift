//
//  ViewController.swift
//  Simple Table
//
//  Created by Victor Smirnov on 02/12/2017.
//  Copyright © 2017 Victor Smirnov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // MARK: TableView Data Source
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    <#code#>
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    <#code#>
  }

  // MARK: TableView Delegate

}

