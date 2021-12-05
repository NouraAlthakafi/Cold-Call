//
//  ViewController.swift
//  Cold Call
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var btnCall: UIButton!
    let namesArray = ["Tareq", "Eman", "Noura", "Asmaa", "Mohammed", "Nada", "Abdulaziz"]
    
    @IBAction func btnCallAction(_ sender: UIButton) {
        for _ in namesArray.indices {
            let randomName = Int.random(in: 0..<7)
            lbName.text = namesArray[randomName]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

