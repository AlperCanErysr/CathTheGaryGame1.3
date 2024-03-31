//
//  ViewController.swift
//  CatchTheGary1.3
//
//  Created by Alper Can Eryaşar on 5.03.2024.
//

import UIKit

class ViewController: UIViewController {
var nickName = ""
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var gary1: UIImageView!
    @IBOutlet weak var gary2: UIImageView!
    @IBOutlet weak var gary3: UIImageView!
    @IBOutlet weak var gary4: UIImageView!
    
    var garyArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        gary1.isUserInteractionEnabled = false
        gary2.isUserInteractionEnabled = false
        gary3.isUserInteractionEnabled = false
        gary4.isUserInteractionEnabled = false
        
        garyArray = [gary1,gary2,gary3,gary4]
        
    }
    
    @objc func hideGary(){
        for gary in garyArray{
            gary.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(garyArray.count - 1 )))
        garyArray[random].isHidden = false
    }
    
    @IBAction func startClicked(_ sender: Any) {
        nickName = textField.text!
        performSegue(withIdentifier: "goSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = nickName
            if nickName == ""{
                nickName = "ENTER NAME"
            }
        }
        
    }
    
}

