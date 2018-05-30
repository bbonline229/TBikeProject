//
//  ViewController.swift
//  Tbike
//
//  Created by Jack on 2018/5/30.
//  Copyright © 2018 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let url = URL(string: "http://tbike.tainan.gov.tw:8081/Service/StationStatus/Json")!
    
    let apiService = ApiService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiService.loadData(with: url) { (station) in
            print(station!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

