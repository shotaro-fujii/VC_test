//
//  VC_A_ViewController.swift
//  VC_test
//
//  Created by 藤井翔大朗 on 2019/06/20.
//  Copyright © 2019 藤井翔大朗. All rights reserved.
//

import UIKit




class VC_A_ViewController: BaseViewController {

    
    let data_a = DataClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        data_a.str1 = "あいうえお"
        data_a.str2 = "かきくけこ"
        data_a.str3 = "さしすせそ"

    
    }
    
    @IBAction func next(_ sender: Any) {
        
        // ①storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        
        // ②遷移先ViewControllerのインスタンス取得
        let nextView = storyboard.instantiateViewController(withIdentifier: "VC_B") as! VC_B_ViewController
        //let nextView = storyboard.instantiateViewController(withIdentifier: "main") as! startViewController
        
        
        // ★画面遷移アニメーションの指定
        //nextView.modalTransitionStyle = .coverVertical
        //nextView.modalTransitionStyle = .flipHorizontal
        //nextView.modalTransitionStyle = .crossDissolve
        nextView.modalTransitionStyle = .partialCurl
        
        nextView.data_b = data_a
        
        // ③画面遷移
        self.present(nextView, animated: true, completion: nil)
    }
    
}
