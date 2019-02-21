//
//  NoCycleViewController.swift
//  ClosureMemoryLeak
//
//  Created by Geek on 2/16/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class NoCycleViewController: UIViewController{
    let leakyButton = LeakyButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        leakyButton.frame = view.frame
        
         var timesTapped = 0
        leakyButton.onTapClosure = {
            timesTapped += 1
            print("button tapped \(timesTapped) times")
        }
        view.addSubview(leakyButton)
    }
    deinit {
        print("NoCycleViewController deinitializer!")
    }
}
