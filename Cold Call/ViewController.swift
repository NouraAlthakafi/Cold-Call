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
    @IBOutlet weak var lbNumber: UILabel!
    
    let namesArray = ["Noura", "Asmaa", "Mohammed", "Nada", "Abdulaziz"]
    
    var randomNumber = Int.random(in: 1...5)
    
    @IBAction func btnCallAction(_ sender: UIButton) {
        for _ in namesArray.indices {
            randomNumber = Int.random(in: 1...5)
            
            lbName.text = namesArray.randomElement()
            lbNumber.text = String(randomNumber)
            switchColors()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func switchColors() {
        switch randomNumber {
        case 1...2:
            lbNumber.textColor = UIColor.red
        case 3...4:
            lbNumber.textColor = UIColor.orange
        case 5:
            lbNumber.textColor = UIColor.green
        default:
            lbNumber.textColor = UIColor.black
        }
    }
}

