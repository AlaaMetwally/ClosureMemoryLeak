//
//  UnownedViewController.swift
//  ClosureMemoryLeak
//
//  Created by Geek on 2/16/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class UnownedViewController: UIViewController{
    
    let leakyButton = LeakyButton()
    var timesTapped = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        leakyButton.frame = view.frame
        
        leakyButton.onTapClosure = { [unowned self] in
            self.timesTapped += 1
            print("button tapped \(self.timesTapped) times")
        }
        view.addSubview(leakyButton)
    }
    deinit{
        print("UnownedViewController deinitialized!")
    }
}
