//
//  SecondViewController.swift
//  CatchTheGary1.3
//
//  Created by Alper Can Eryaşar on 5.03.2024.
//

import UIKit

class SecondViewController: UIViewController {
var myName = ""
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
