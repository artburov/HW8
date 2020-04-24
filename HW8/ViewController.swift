//
//  ViewController.swift
//  HW8
//
//  Created by Admin on 22.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var allImages: [UIImage] = [
        UIImage(named: "image0")!,
        UIImage(named: "image1")!,
        UIImage(named: "image2")!,
        UIImage(named: "image3")!,
        UIImage(named: "image4")!,
        UIImage(named: "image5")!,
        UIImage(named: "image6")!,
        UIImage(named: "image7")!,
        UIImage(named: "image8")!,
        UIImage(named: "image9")!
    ]
    
    var imageIndex: Int = 0
    
    
    @IBOutlet weak var viewImage: UIImageView!
    
    @IBAction func nextBtn(_ sender: UIButton) {
        if imageIndex < allImages.count - 1 {
            imageIndex += 1
            //print("+++\(imageIndex)")
            if imageIndex >= 0 {
                let image = allImages[imageIndex]
                viewImage.image = image
                
            } else {return}
        }
    }
    
    @IBAction func prevBtn(_ sender: UIButton) {
        if imageIndex > 0 && imageIndex < allImages.count  {
            imageIndex -= 1
            //print("---\(imageIndex)")
            let image = allImages[imageIndex]
            viewImage.image = image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewImage.image = allImages[0]
    }
}







