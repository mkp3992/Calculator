//
//  ViewController.swift
//  Calculator
//
//  Created by Mahi Panchal on 8/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billtotal: UILabel!
    @IBOutlet weak var Tipamount: UILabel!
    @IBOutlet weak var tippercentTxt: UITextField!
    @IBOutlet weak var Billamount: UITextField!
    @IBOutlet weak var calctipbtn: UIButton!
    @IBAction func Calculatetip(_ sender: Any) {
        
        let billamount:Double = Double(Billamount.text!)!
        
        let tipamount:Double = (Double(tippercentTxt.text!)!/100) * Double(Billamount.text!)!
        
        Tipamount.text = String(format:"$%0.2f",tipamount)
        
        billtotal.text = String(format:"$%0.2f",billamount + tipamount)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

