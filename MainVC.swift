//
//  ViewController.swift
//  PartyRock
//
//  Created by Andriy Pryvalov on 30.08.16.
//  Copyright © 2016 Andriy Pryvalov. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imgURL: "http://www,wavefm.com.ua/images/tories/2015/04/refdoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xGiBiHocSZM\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "New Thang")
        
        
        partyRocks.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            let partyRock = partyRocks[indexPath.row]
            cell.UpdateUI(partyRock: partyRock)
            return cell
            
        } else {
            return UITableViewCell()
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}


