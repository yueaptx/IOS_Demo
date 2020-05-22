//
//  ViewController.swift
//  Demo
//
//  Created by Yue Huang on 5/19/20.
//  Copyright © 2020 yueaptx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LLanFightLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LLanFightLbl.isHidden = true
    }


    @IBAction func LLanFightBtn(_ sender: Any) {
        LLanFightLbl.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.LLanFightLbl.isHidden = true
        }
    }
    
    
    
    //    @IBAction func lightSwitchBtnClicked(_ sender: Any) {
    //        if lightsAreOn == true{
    //            // turn them off.
    //            lightSwitchLbl.text = "Lights Off"
    //            lightSwitchLbl.textColor = UIColor.white
    //            view.backgroundColor = UIColor.black
    //            lightsAreOn.toggle()
    //        } else {
    //            // turn them on.
    //            lightSwitchLbl.text = "Lights On"
    //            lightSwitchLbl.textColor = UIColor.black
    //            view.backgroundColor = UIColor.white
    //            lightsAreOn.toggle()
    //        }

    //    }
}

