//
//  ViewController.swift
//  TripleByte Programming Problem
//
//  Created by user on 12/11/18.
//  Copyright © 2018 Alphonso Sensley II. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Networking().getMeowItems()
    }

    

}

