
//
//  ListViewController.swift
//  iosAutomation
//
//  Created by Sachin Daingade on 09/10/19.
//  Copyright © 2019 Sachin Daingade. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "iOS List"
        // Do any additional setup after loading the view.
        self.mapedData()
        self.filterData()
        self.reducedData()
        self.compactData()
        self.flatMappedData()
    }
    

    func mapedData(){
    let bookData = ["book1":120, "book2": 150]
    let mapedData = bookData.map({(key,value) in return value + 40 })
    print(mapedData)
    }

    func filterData()
    {
         let bookData = ["book1":127, "book2": 150 ,"book3": 289 ,"book4": 190, "book5": 950  ]
        let filterData = bookData.filter({(key,value) in return value < 200})
        print(filterData)
    }
    
    func reducedData()
    {
        let data = [1,2,3,4,5,6,7,8,9,10]
        let reducedData = data.reduce(0, { sum , number in return sum + number })
        print(reducedData)
    }
    func compactData(){
           let data = [1,nil,3,4,5,6,7,nil,9,10]
        let cMap = data.compactMap({return $0})
        print(cMap)
    }
    
    func flatMappedData(){
        let data = ["sachin"]
        let characters = data.flatMap({return $0})
        print(characters)        
    }
}
