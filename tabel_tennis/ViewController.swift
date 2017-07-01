//
//  ViewController.swift
//  tabel_tennis
//
//  Created by 20151104689 on 17/4/23.
//  Copyright © 2017年 20151104689. All rights reserved.
//

import UIKit
var    imageaall:UIImage!
var    imageball:UIImage!


class ViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate {

    @IBOutlet weak var score_a: UITextField!
    @IBOutlet weak var score_b: UITextField!
    @IBOutlet weak var total_a: UITextField!
    @IBOutlet weak var total_b: UITextField!
    
    @IBOutlet weak var imagea: UIImageView!
    @IBOutlet weak var imageb: UIImageView!
    
    @IBOutlet weak var image_a: UIImageView!
    @IBOutlet weak var image_b: UIImageView!
    
    
    var count_a = 1
    var count_b = 1
    var point_a = 0
    var point_b = 0
    var undonum_a = 0
    var im1 = 0
    var im2 = 0
    var n = 0
    var temp  = Int()
    var temp_1 = Int()
    @IBOutlet weak var result_a: UITextField!
    @IBOutlet weak var result_b: UITextField!
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any])
    {
        //查看info对象
        print(info)
        
        //显示的图片
        let image:UIImage!
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        if(im1==1){
            imagea.image = image
            imageaall = imagea.image
        }
        if(im2==1){
            imageb.image = image
            imageball = imageb.image
        }
        //图片控制器退出
        picker.dismiss(animated: true, completion: {
            () -> Void in
        })
    }
    
    @IBAction func start(_ sender: UIButton) {
        image_a.image = imageaall
        image_b.image = imageball
        
    }
    
    
    
    
    
    

        @IBAction func add_a(_ sender: Any) {
        result_a.text=""
        result_b.text=""
        count_a=Int(score_a.text!)!
        temp=count_a+1
        score_a.text="\(temp)"
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
                
            }
            else if count_b+1==11 && count_a+1<=9{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
        if count_a+1>=10 && count_b+1>=10
            {
                if count_a - count_b > 1{
                    count_a=0
                    count_b=0
                    result_a.text="Awin"
                    result_b.text="Blost"
                    point_a+=1
                    temp=0
                    temp_1=0
                    score_a.text="0"
                    score_b.text="0"
                    total_a.text="\(point_a)"
                }
                else if count_b - count_a > 1{
                    count_a=0
                    count_b=0
                    result_a.text="Alost"
                    result_b.text="Bwin"
                    point_b+=1
                    temp=0
                    temp_1=0
                    score_a.text="0"
                    score_b.text="0"
                    total_b.text="\(point_b)"
                }
            }
        
            
            
        
    }
    
    @IBAction func add_b(_ sender: Any) {
        result_a.text=""
        result_b.text=""
        count_b=Int(score_b.text!)!
        temp_1=count_b+1
        score_b.text="\(temp_1)"
    
        
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
            }
            else if count_b+1==11 && count_a+1<=9{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
            if count_a+1>=10 && count_b+1>=10
            {
                if count_a - count_b > 1{
                    count_a=0
                    count_b=0
                    result_a.text="Awin"
                    result_b.text="Blost"
                    point_a+=1
                    temp=0
                    temp_1=0
                    score_a.text="0"
                    score_b.text="0"
                    total_a.text="\(point_a)"
                }
                else if count_b - count_a > 1{
                    count_a=0
                    count_b=0
                    result_a.text="Alost"
                    result_b.text="Bwin"
                    point_b+=1
                    temp=0
                    temp_1=0
                    score_a.text="0"
                    score_b.text="0"
                    total_b.text="\(point_b)"
                }
            }
        
        undonum_a = count_a + 1
        
    }
    @IBAction func undo_a(_ sender: Any) {
        
        temp = temp - 1
        count_a = count_a - 1
        if temp < 0{
            score_a.text="0"
        }
        else {
            score_a.text="\(temp)"
        }
        
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
                
            }
            else if count_b+1==11 && count_a+1<=9{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
        if count_a+1>=10 && count_b+1>=10
        {
            if count_a - count_b > 1{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
            }
            else if count_b - count_a > 1{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
        

    }
    @IBAction func undo_b(_ sender: Any) {
        temp_1 = temp_1 - 1
        count_b = count_b - 1
        if temp_1 < 0{
            score_b.text="0"
        }
        else {
            score_b.text="\(temp_1)"
        }
        
        if count_a+1>=10 || count_b+1>=10
        {
            if count_a+1==11 && count_b+1<=9{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
                
            }
            else if count_b+1==11 && count_a+1<=9{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
        if count_a+1>=10 && count_b+1>=10
        {
            if count_a - count_b > 1{
                count_a=0
                count_b=0
                result_a.text="Awin"
                result_b.text="Blost"
                point_a+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_a.text="\(point_a)"
            }
            else if count_b - count_a > 1{
                count_a=0
                count_b=0
                result_a.text="Alost"
                result_b.text="Bwin"
                point_b+=1
                temp=0
                temp_1=0
                score_a.text="0"
                score_b.text="0"
                total_b.text="\(point_b)"
            }
        }
        


    }
    @IBAction func clearall(_ sender: Any) {
        count_b = 0
        count_a = 0
        point_a=0
        point_b=0
        temp_1=0
        temp=0
        score_a.text="0"
        score_b.text="0"
        total_a.text="0"
        total_b.text="0"
    }
    
    @IBAction func uploada(_ sender: UIButton) {
        
        im1=1
        im2=0
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            //初始化图片控制器
            let picker = UIImagePickerController()
            //设置代理
        picker.delegate = self
            //指定图片控制器类型v            
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            //弹出控制器，显示界面
            self.present(picker, animated: true, completion: {
                () -> Void in
            })
        }
        else{
            print("读取相册错误")
        }
        //}
    }
    
    @IBAction func uploadb(_ sender: UIButton) {
        im1=0
        im2=1
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            //初始化图片控制器
            let picker = UIImagePickerController()
            //设置代理
            picker.delegate = self
            //指定图片控制器类型v
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            //弹出控制器，显示界面
            self.present(picker, animated: true, completion: {
                () -> Void in
            })
        }
        else{
            print("读取相册错误")
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

