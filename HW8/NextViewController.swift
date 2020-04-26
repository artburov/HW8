//
//  NextViewController.swift
//  HW8
//
//  Created by Admin on 25.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var mainView: UIImageView!
    
    var createdView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func createView(for index: Int) {
            
            // Base x, y positioning and frame width and height
            var currentX: CGFloat = 2
            var currentY: CGFloat = 50
            let width: CGFloat = 200
            let height: CGFloat = 300
            
            // Main UIView background
            mainView.backgroundColor = UIColor.lightGray
            
            for i in 0...index-1 {
                
                if i % 2 == 0 {
                    createdView = UIView(frame: CGRect(x: currentX, y: currentY, width: width, height: height))
                    currentX += createdView.frame.width + 10
                }
                if i % 2 == 1 {
                    createdView = UIView(frame: CGRect(x: currentX, y: currentY, width: width, height: height))
                    currentX += createdView.frame.width - 410
                    currentY += createdView.frame.height + 80
                }
                
                let image = "image\(i)"
                let labelText = "Label - \(i)"
                
                // createdView = UIView(frame: CGRect(x: posX, y: posY, width: width, height: height))
                
                //Change UIView background colour
                createdView.backgroundColor=UIColor.lightGray
                
                // Add border to UIView
                createdView.layer.borderWidth = 1
                
                // Change UIView Border Color to Red
                createdView.layer.borderColor = UIColor.red.cgColor
                
                // Add created UIView as a Subview of mainView
                mainView.addSubview(createdView)
                
                // Add image from Assets
                let viewImage = UIImage(named: "\(image)")
                
                // Add UIImage value to operate with image preferences
                let selectedImage:UIImageView = UIImageView()
                
                // Setup image to scale to fill
                selectedImage.contentMode = UIView.ContentMode.scaleToFill
                
                // Add image width and height
                selectedImage.frame.size.width = 200
                selectedImage.frame.size.height = 300
                
                // Display the selected image from Assets
                selectedImage.image = viewImage
                
                // Add UIImage as a Subview of createdView
                createdView.addSubview(selectedImage)
                
                // Add label with CGRect positionig
                let label = UILabel(frame: CGRect(x: 50, y: 310, width: 100, height: 30))
                
                // Add label color, background color, label text align to center
                label.textColor = UIColor.blue
                label.backgroundColor = .brown
                label.textAlignment = .center
                
                // Add label text
                label.text = labelText
                
                // Add label as a Subview of createdView
                createdView.addSubview(label)
            }
        }
        createView(for: 4)
    }
}
