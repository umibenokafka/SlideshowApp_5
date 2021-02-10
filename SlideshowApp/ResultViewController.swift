//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 鈴木光央 on 2021/01/28.
//  Copyright © 2021 taro.kirameki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var Image = UIImage()
    var imagename = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgpen = UIImage(named : imagename)!
        imageView.image = imgpen
        //imageView.image = self.image

        // Do any additional setup after loading the view.
    }
    
    //override func didReceiveMemoryWarning() {
    //super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
