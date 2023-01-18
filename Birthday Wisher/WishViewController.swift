//
//  WishViewController.swift
//  Birthday Wisher
//
//  Created by shoeb on 18/01/23.
//

import UIKit

class WishViewController: UIViewController {

    var strName : String!
    var strMiddleName : String!
    @IBOutlet weak var wishNameLBL: UILabel!
    @IBOutlet weak var middleNameLBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        wishNameLBL.text = strName
        middleNameLBL.text = strMiddleName
    }
}
