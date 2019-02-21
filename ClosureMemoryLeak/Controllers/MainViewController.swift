//
//  MainViewController.swift
//  ClosureMemoryLeak
//
//  Created by Geek on 2/16/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    @IBAction func pushLeakyVC(_ sender: Any){
        navigationController?.pushViewController(LeakyViewController(), animated: true)
    }
    @IBAction func pushUnownedVC(_ sender: Any){
        navigationController?.pushViewController(UnownedViewController(), animated: true)
    }
    @IBAction func pushNoCycleVC(_ sender: Any){
        navigationController?.pushViewController(NoCycleViewController(), animated: true)
    }
}
