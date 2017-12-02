//
//  ViewController.swift
//  Simple Table
//
//  Created by Victor Smirnov on 02/12/2017.
//  Copyright © 2017 Victor Smirnov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  private let dwarves = [
              "Sleepy", "Sneezy", "Bashful", "Happy", "Doc", "Grumpy",
              "Dopey", "Thorin", "Dorin", "Nori", "Ori", "Balin", "Dwalin",
              "Fili", "Kili", "Oin", "Gloin", "Bifur", "Bofur", "Bomfur"
              ]
  let simpleTableIdentifier = "SimpleTableIdentifier"

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
    return dwarves.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
    if cell == nil {
      cell = UITableViewCell(style: .default, reuseIdentifier: simpleTableIdentifier)
    }
    let image = UIImage(named: "star")
    cell?.imageView?.image = image
    let highlightedImage = UIImage(named: "star2")
    cell?.imageView?.highlightedImage = highlightedImage
    
    cell?.textLabel?.text = dwarves[indexPath.row]
    if indexPath.row < 7 {
      cell?.detailTextLabel?.text = "Mr Disney"
    } else {
      cell?.detailTextLabel?.text = "Mr Tolkien"
    }
    cell?.textLabel?.font = UIFont.boldSystemFont(ofSize: 32)
    return cell!
  }

  // MARK: TableView Delegate
  func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
    return indexPath.row % 4
  }
  func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return indexPath.row == 0 ? nil : indexPath
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let rowValue = dwarves[indexPath.row]
    let message = "You selected \(rowValue)"
    
    let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Yes I Did", style: .default, handler: nil)
    controller.addAction(action)
    present(controller, animated: true, completion: nil)
  }

}

