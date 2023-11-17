//
//  GreenViewController.swift
//  Week6
//
//  Created by Rania Arbash on 2023-10-13.
//

import UIKit

class GreenViewController: UIViewController {

    
    
    var nameFromMainVC = ""
    var counter = 1
    
    @IBOutlet weak var textInGreenView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 100
        
        textInGreenView.text = "Welcome \(nameFromMainVC)"
        print ("In Green View did load ")

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print ("In Gree View will appear ")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print ("In Green View will disappear ")

    }
    
    @IBAction func updateCounterClicked(_ sender: Any) {
        
        
        counter += 1
        textInGreenView.text = "\(counter)"
    }
    
    
    @IBAction func toWhicthView(_ sender: Any) {
        
        dismiss(animated: true)
        
        
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
