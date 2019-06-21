//
//  ViewController.swift
//  VC_test
//
//  Created by 藤井翔大朗 on 2019/06/20.
//  Copyright © 2019 藤井翔大朗. All rights reserved.
//

import UIKit

class startViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var str  = "遷移前です"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = str

        
    }
    
    @IBAction func tap(_ sender: Any) {
        
        // ①storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        
        // ②遷移先ViewControllerのインスタンス取得
        let nextView = storyboard.instantiateViewController(withIdentifier: "VC_A") as! VC_A_ViewController
        //let nextView = storyboard.instantiateViewController(withIdentifier: "main") as! startViewController
        
        
        // ★画面遷移アニメーションの指定
        //nextView.modalTransitionStyle = .coverVertical
        //nextView.modalTransitionStyle = .flipHorizontal
        nextView.modalTransitionStyle = .crossDissolve
        //nextView.modalTransitionStyle = .partialCurl
        
        //nextView.str = "遷移しました"
        
        // ③画面遷移
        self.present(nextView, animated: true, completion: nil)

    }



}

