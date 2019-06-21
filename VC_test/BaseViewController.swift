//
//  BaseViewController.swift
//  VC_test
//
//  Created by 藤井翔大朗 on 2019/06/20.
//  Copyright © 2019 藤井翔大朗. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var base_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ベース")
        colorView.backgroundColor = UIColor.blue

        base_label.text = "BaseVCで設定した文字列"
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
