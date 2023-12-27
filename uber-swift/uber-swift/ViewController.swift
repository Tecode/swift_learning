//
//  ViewController.swift
//  uber-swift
//
//  Created by 昊轩 on 2023/6/11.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.frame = CGRect(x: (self.view.frame.width - 160) / 2, y: (self.view.frame.height - 200) / 2, width: 160.0, height: 200.0)
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
        self.view.addSubview(view)
    }
    
    
}

