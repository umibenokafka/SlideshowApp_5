//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 鈴木光央 on 2021/01/24.
//  Copyright © 2021 taro.kirameki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageIndex = 0
    
    // スライドショーに使用するタイマーを宣言
    var timer: Timer!
    
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    
    let images = ["IMG_2570.jpeg","IMG_2569.jpeg","IMG_2568.jpeg"]
    //var imageIndex = 0
    //imageIndex = imgeIndex + 1
    //let imageName = images[imageIndex]
    
    @IBOutlet weak var nextbutton: UIButton!
    @IBOutlet weak var backbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        image1.image = imgpen
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var image1: UIImageView!
    var imgpen = UIImage(named : "IMG_2570.jpeg")!
    
    @IBAction func move(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        let image = images[imageIndex]
        let imgpen = UIImage(named : image)!
        image1.image = imgpen
    }
    
    @IBAction func `return`(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        let image = images[imageIndex]
        let imgpen = UIImage(named : image)!
        image1.image = imgpen
    }
    
    @IBAction func playback_stop(_ sender: Any) {
        if self.timer != nil {
            self.timer.invalidate()   // タイマーを停止する
            self.timer = nil          // startTimer() の self.timer == nil で判断するために、 self.timer = nil としておく
            nextbutton.isEnabled = true
            backbutton.isEnabled = true
        } else {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector:
                       #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            // ボタンの操作を無効
            nextbutton.isEnabled = false
            backbutton.isEnabled = false
        }
    }
    @objc func updateTimer(_ timer: Timer) {
        if imageIndex == 2 {
        imageIndex = 0
        } else {
        imageIndex += 1
        }
        let image = images[imageIndex]
        let imgpen = UIImage(named : image)!
        image1.image = imgpen
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
       }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.imagename = images[imageIndex]
    }
    class ViewController: UIViewController {
        
        @IBOutlet weak var `false`: UIButton!
        @IBOutlet weak var button: UIButton!

        override func viewDidLoad() {
            super.viewDidLoad()

           
        }


        @IBAction func pushButton(sender: UIButton) {
            print("Push!")
        }
      }
    }

