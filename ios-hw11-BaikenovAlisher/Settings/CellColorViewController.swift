//
//  CellColorViewController.swift
//  ios-hw11-BaikenovAlisher
//
//  Created by rbkuser on 04.07.2024.
//

import UIKit

class CellColorViewController: UIViewController {

    var setColor: UIColor?
    var setText: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = setColor
        title = setText
    }
    
    
}
