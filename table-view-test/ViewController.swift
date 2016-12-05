//
//  ViewController.swift
//  table-view-test
//
//  Created by Paul on 03.01.16.
//  Copyright © 2016 Home. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

//@IBOutlet weak var cellBg: UIView!
    
    
    //var dataForTable = [String]()
    var dataImgForTable = ["https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTDVf8OJ9Zq_tRGI1WatKfAo1FivlZD1UjO8WL3_AhEPlmPYVFS", "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQyu-rDLQUeB1tuDg0B8VjSXYbSbWhlHCb4ZDvoRf9KP3kig_BpYw","sadfsd", "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTXbAaj4hsmNcJg7L0xQBA0jWLnnsUSyAePwg-NY1BGEjxOUaxx", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmjr_3qhBlw7LDnP6S9mWec5gHrmHnSJzhhsi7mwVfsaDGQMmk7w", ""]
    var dataTextForTable = ["Семенов Петр","Синявин Егор","Боровик Сергей", "Звонкова Елена","Ибн Абдурахман","","aaa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("nameOfThisTable") as? MyCustomCell {
            
            var img: UIImage!
            
            
            let url = NSURL(string: dataImgForTable[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                img = UIImage(data: data)
            } else {
                img = UIImage(named: "def_userpic")
            }
            
            cell.configureCell(img, text: dataTextForTable[indexPath.row])
            
            return cell
        } else {
            return MyCustomCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataImgForTable.count
    }

}

