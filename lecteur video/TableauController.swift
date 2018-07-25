//
//  TableauController.swift
//  lecteur video
//
//  Created by soufiane on 23/07/18.
//  Copyright © 2018 ES. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tabelView: UITableView!
    
    var chansons = [Chanson]()
    let idcell = "idcelle"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.delegate = self
        tabelView.dataSource = self
        addChanson()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: idcell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func addChanson() {
        chansons = [Chanson]()
        let cool = Chanson(artist: "Casseurs Flowters", title: "Ils sont cools", code: "_DT-4-jJTZc")
        chansons.append(cool)
        let bien  = Chanson(artist: "Orelsan", title: "tout va bien", code: "dq6G2YWoRqA")
        chansons.append(bien)
        let basique = Chanson(artist: "Orelsan", title: "Basique", code: "2bjk26RwjyU")
        chansons.append(basique)
        let ronde = Chanson(artist: "Orelsan", title: "La terre est ronde", code: "oGdhZyS2ozo")
        chansons.append(ronde)
        let san = Chanson(artist: "Orelsan", title: "San", code: "PejyoeG_TmA")
        chansons.append(san)
        let seul = Chanson(artist: "Orelsan", title: "Si seul", code: "cz-PLtXh7Lo")
        chansons.append(seul)
        let inacheves = Chanson(artist: "Casseurs Flowteurs", title: "Inachevés", code: "MW1eQZ_PEb4")
        chansons.append(inacheves)
        
        tabelView.reloadData()
        
    }



}
