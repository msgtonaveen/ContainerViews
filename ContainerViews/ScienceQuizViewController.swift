//
//  ScienceQuizViewController.swift
//  ContainerViews
//
//  Created by Naveen on 29/01/17.
//  Copyright © 2017 naveenr. All rights reserved.
//

import UIKit
class ScienceQuizViewController: UIViewController {
    weak var delegate: ScoreDelegate?
    
    @IBAction func correctAnswer(_ sender: Any) {
        delegate?.addOneToScore()
    }
    
}
