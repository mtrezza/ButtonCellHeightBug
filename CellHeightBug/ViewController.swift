//
//  ViewController.swift
//  CellHeightBug
//
//  Created by Manuel Trezza on 09/05/2016.
//  Copyright © 2016 Manuel Trezza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let dataSource: [String] = [
        "This is a text that is so long that it will create a multi-line button, on most screens it should anyways...",
        "This is a text that is so long that it will create a multi-line button, on most screens it should anyways...",
        "This is a text that is so long that it will create a multi-line button, on most screens it should anyways..."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = UITableView()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.frame = view.frame
        view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = ButtonCell(buttonText: dataSource[indexPath.row])
        return cell
    }

}

