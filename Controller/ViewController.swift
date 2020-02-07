//
//  ViewController.swift
//  Animations-Lab-2
//
//  Created by David Lin on 2/5/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let mainView = MainView()
    
    
    override func loadView() {
        view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }


}

