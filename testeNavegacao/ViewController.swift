//
//  ViewController.swift
//  testeNavegacao
//
//  Created by humberto Lima on 19/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tabelaTemp: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelaTemp.delegate = self
        tabelaTemp.dataSource = self
        tabelaTemp.register(UINib(nibName: "CellTesteTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
         NotificationCenter.default.addObserver(self, selector: #selector(navegaTela(notification:)), name: NSNotification.Name(rawValue: "navega"), object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "navega"), object: nil)
    }
    
    
    @objc func navegaTela(notification: Notification!) {
        let temp = notification.object as! Int
        if temp == 0{
            self.performSegue(withIdentifier: "nav0", sender: self)
        }else if temp == 1 {
            self.performSegue(withIdentifier: "nav1", sender: self)
        }else if temp == 2 {
            self.performSegue(withIdentifier: "nav2", sender: self)
        }else if temp == 3 {
            self.performSegue(withIdentifier: "nav3", sender: self)
        }else if temp == 4 {
            self.performSegue(withIdentifier: "nav4", sender: self)
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelaTemp.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTesteTableViewCell
        cell.indexSelecionado = indexPath.row
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

