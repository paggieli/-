//
//  CalculateFee.swift
//  CalculateFee
//
//  Created by Admin on 2017/3/26.
//  Copyright © 2017年 Admin. All rights reserved.
//

import UIKit

class CalculateFee: UIViewController {
    

    @IBOutlet weak var txt_currency: UITextField!
    @IBOutlet weak var txt_rate: UITextField!
    
    @IBOutlet weak var label_ans: UILabel!
    @IBOutlet weak var label_title: UILabel!
    
    
    
    @IBAction func btn_calc(_ sender: Any) {
        
        if(txt_rate.text! != "" && txt_currency.text! != ""){
          
            let rate:Double? = Double(txt_rate.text!)
            let curr:Double? = Double(txt_currency.text!)
            
            label_ans.text = "\(( curr! / rate! ) * 30.2)"

        
            label_ans.isHidden = false
            label_title.isHidden = false
        
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
