//
//  ViewController.swift
//  Week6
//
//  Created by Rania Arbash on 2023-10-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("In white View did load ")
    }
    override func viewWillAppear(_ animated: Bool) {
        print ("In white View will appear ")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print ("In white View will disappear ")

    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toGreen"{
            if let goodName = nameText.text {
                if !goodName.isEmpty {
                    (segue.destination as! GreenViewController).nameFromMainVC = goodName
                    
                }
            }
        }else if segue.identifier == "toRed" {
            
            (segue.destination as! RedViewController).valueFromMVC = 200
            
            
        }
    }


}

