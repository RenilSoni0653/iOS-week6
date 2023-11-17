//
//  RedViewController.swift
//  Week6
//
//  Created by Rania Arbash on 2023-10-13.
//

import UIKit

class RedViewController: UIViewController {
    var valueFromMVC = 0
    
    @IBOutlet weak var TextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(valueFromMVC)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        
        // create the alert
        // with two buttons and one meg
        
        var alert = UIAlertController(title: "Select!!", message: "Which number do you want? ", preferredStyle: .alert)
        
        var action1 = UIAlertAction(title: "One", style: .default) { action in
            print("The first button in the alert has been clicked")
    }

        
        var action2 = UIAlertAction(title: "Two", style: .default) { action in
            print("The second button in the alert has been clicked")
        
    }
        
        
        var action3 = UIAlertAction(title: "Three", style: .default) { action in
                print("The third button in the alert has been clicked")
            
        }
        
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)

        present(alert, animated: true)
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
