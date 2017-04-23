//
//  ViewController.swift
//  tabel_tennis
//
//  Created by 20151104689 on 17/4/23.
//  Copyright © 2017年 20151104689. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var score_a: UITextField!
    @IBOutlet weak var score_b: UITextField!
    var count_a = 1
    var count_b = 1
    
    
    

    
    @IBAction func add_a(_ sender: Any) {
        var temp=Int()
        count_a=Int(score_a.text!)!
        temp=count_a+1
        score_a.text="\(temp)"
    }
    @IBAction func add_b(_ sender: Any) {
        var temp_1=Int()
        count_b=Int(score_b.text!)!
        temp_1=count_b+1
        score_b.text="\(temp_1)"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

