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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.backgroundColor = UIColor.lightGray
        
        
        func createView(positionX: Int, positionY: Int, image: String, labelText: String) {
            
            let createdView=UIView(frame: CGRect(x: positionX, y: positionY, width: 200, height: 300))
            
            // Change UIView background colour
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
        
        func createAllFourViews() {
            
            for i in 1...4 {
                
                if i == 1 {
                    createView(positionX: 5, positionY: 50, image: "image1", labelText: "Test-01")
                }
                
                if i == 2 {
                    createView(positionX: 210, positionY: 50, image: "image2", labelText: "Test-02")
                }
                
                if i == 3 {
                    createView(positionX: 5, positionY: 430, image: "image3", labelText: "Test-03")
                }
                
                if i == 4 {
                    createView(positionX: 210, positionY: 430, image: "image4", labelText: "Test-04")
                }
            }
        }
        createAllFourViews()
    }
}
