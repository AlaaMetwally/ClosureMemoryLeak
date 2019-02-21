//
//  LeakyButton.swift
//  ClosureMemoryLeak
//
//  Created by Geek on 2/16/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class LeakyButton: UIButton{
    var numbers = [Double] (repeating: 0.0, count: Constants.sizableCount)
    var onTapClosure: (() -> Void)?
    
    override init (frame: CGRect){
        super.init(frame: frame)
        titleLabel?.font = UIFont.systemFont(ofSize:15)
        setTitle("Press Me", for: .normal)
        setTitleColor(tintColor, for: .normal)
        addTarget(self, action: #selector(onTapFunction), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func onTapFunction (){
        onTapClosure?()
    }
}
