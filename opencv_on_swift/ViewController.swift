//
//  ViewController.swift
//  opencv_on_swift
//
//  Created by TATSUYA SHIGETOMI on 2017/11/23.
//  Copyright © 2017年 shige. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        initImageView()
        
        let openCv = OpenCVWrapper()//c++のラッパーのインスタンス生成
        
        let src:UIImage = UIImage(named:"Lenna")!//画像データの読み込み
        
        /* ラッパー（.mmファイル）c++のコードを呼び出すところ */
        let dst:UIImage = openCv.testFunction(src)//画像をグレースケールに変換
        
        let src_imageView = UIImageView(image:src)//UIImageをUIViewに変換
        let dst_imageView = UIImageView(image:dst)//UIImageをUIViewに変換
        
        let width:CGFloat = self.view.frame.size.width//画面の横幅の取得
        let height:CGFloat = self.view.frame.size.height//画面の縦幅の取得
        
        src_imageView.center = CGPoint(x:width/2, y:height/2 - src_imageView.frame.height/2)//元画像を貼り付ける座標を指定
        dst_imageView.center = CGPoint(x:width/2, y:height/2 + dst_imageView.frame.height/2)//変換画像を貼り付ける座標を指定
        
        self.view.addSubview(src_imageView)//画面に追加
        self.view.addSubview(dst_imageView)//画面に追加
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
