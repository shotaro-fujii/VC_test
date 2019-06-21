//
//  VC_B_ViewController.swift
//  VC_test
//
//  Created by 藤井翔大朗 on 2019/06/21.
//  Copyright © 2019 藤井翔大朗. All rights reserved.
//

import UIKit

class VC_B_ViewController: BaseViewController {
    
    var data_b = DataClass()
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label1.text = data_b.str1
        label2.text = data_b.str2
        label3.text = data_b.str3

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
