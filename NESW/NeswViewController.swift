//
//  ViewController.swift
//  NESW
//
//  Created by H on 9/13/17.
//  Copyright © 2017 Harshada. All rights reserved.
//

import UIKit

class NeswViewController: UIViewController, DirectionDelegate {
    
    var direction: String = ""
    
    @IBAction func directionButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "DirectionSegue", sender: sender.titleLabel?.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DirectionViewController
        destination.delegate = self
        
        let directionKeyword = sender as? String
        destination.direction = directionKeyword!
    }
    
    func dismissView(by controller: DirectionViewController) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

