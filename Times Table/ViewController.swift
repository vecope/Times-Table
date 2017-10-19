//
//  ViewController.swift
//  Times Table
//
//  Created by CAMILO ALEJANDRO ALFONSO SANCHEZ on 10/18/17.
//  Copyright © 2017 CAMILO ALEJANDRO ALFONSO SANCHEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((indexPath.row+1) * Int(slider.value))
        return cell
    }

    
    @IBAction func sliderChanged(_ sender: Any) {

        print(Int(slider.value))
        table.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

