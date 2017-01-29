//
//  ScoreViewController.swift
//  ContainerViews
//
//  Created by Naveen on 29/01/17.
//  Copyright © 2017 naveenr. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    var score = 0
    
    @IBOutlet weak var scoreLbl: UILabel!
    
    func updateScore() {
        score = score + 1
        scoreLbl.text = String(score)
    }
}
