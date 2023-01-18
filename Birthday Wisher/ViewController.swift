//
//  ViewController.swift
//  Birthday Wisher
//
//  Created by shoeb on 18/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBTN(_ sender: Any) {
        if(nameTF.text == ""){
            let alert = UIAlertController(title: "Alert", message: "Please Enter Name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: {
                return})
        }else{
            let wishVC = self.storyboard?.instantiateViewController (withIdentifier: "WishViewController") as! WishViewController
            wishVC.strName = "Happy Birthday \(nameTF.text!)"
            wishVC.strMiddleName = "'' \(nameTF.text!) ,,"
            self.navigationController?.pushViewController(wishVC,animated:true)
        }
    }
}

