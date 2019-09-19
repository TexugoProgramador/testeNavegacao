//
//  CellTesteTableViewCell.swift
//  testeNavegacao
//
//  Created by humberto Lima on 19/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class CellTesteTableViewCell: UITableViewCell {

    var indexSelecionado = Int()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func navegaTela(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name("navega"), object: indexSelecionado)
    }
}
