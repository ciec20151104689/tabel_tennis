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
    @IBOutlet weak var result: UITextField!
    var count_a = 1
    var count_b = 1
    var n=0
    
    @IBOutlet weak var result_b: UITextField!
    
    

    
    @IBAction func add_a(_ sender: Any) {
        
        var temp=Int()
        count_a=Int(score_a.text!)!
        temp=count_a+1
        score_a.text="\(temp)"
        result.text="\(count_a)"
        
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                result.text="Awin"
            }
            else if count_b+1==11&&count_a+1<=9{
                result.text="Bwin"
            }
            else if count_a+1>=10 && count_b+1>=10
            {
                if count_a - count_b > 1{
                    result.text="Awin(2)"
                }
                else if count_b - count_a > 1{
                    result.text="Bwin(2)"
                }
            }
            
        }
        
    }
    @IBAction func add_b(_ sender: Any) {
        var temp_1=Int()
        count_b=Int(score_b.text!)!
        temp_1=count_b+1
        score_b.text="\(temp_1)"
        result_b.text="\(count_b)"
        
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                result.text="Awin"
            }
            else if count_b+1==11&&count_a+1<=9{
                result.text="Bwin"
            }
            else if count_a+1>=10 && count_b+1>=10
            {
                if count_a - count_b > 1{
                    result.text="Awin(2)"
                }
                else if count_b - count_a > 1{
                    result.text="Bwin(2)"
                }
            }
            
        }
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

