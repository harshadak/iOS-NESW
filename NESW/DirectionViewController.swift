//
//  DirectionViewController.swift
//  NESW
//
//  Created by H on 9/13/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import UIKit

class DirectionViewController: UIViewController {
    
    weak var delegate: DirectionDelegate?
    
    var direction = ""

    @IBOutlet weak var goBackButton: UIButton!
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
       delegate?.dismissView(by: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        goBackButton.titleLabel?.text! = direction
        goBackButton.setTitle(direction, for: .normal)
        
        print(goBackButton.titleLabel!.text!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
