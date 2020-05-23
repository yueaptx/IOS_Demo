//
//  ViewController.swift
//  Demo
//
//  Created by Yue Huang on 5/19/20.
//  Copyright © 2020 yueaptx. All rights reserved.
//

import FSCalendar
import UIKit

class ViewController: UIViewController, FSCalendarDelegate {

    
    @IBOutlet weak var LLanFightLbl: UILabel!
    @IBOutlet var calendar: FSCalendar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LLanFightLbl.isHidden = true
        calendar.delegate = self
    }

    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE MM-dd-YYYY"
        let string = formatter.string(from: date)
        print("\(string)")
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

