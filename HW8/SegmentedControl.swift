//
//  SegmentedControl.swift
//  HW8
//
//  Created by Admin on 26.04.2020.
//  Copyright © 2020 home. All rights reserved.
//

import UIKit

class SegmentedControl: UIViewController {
    
    @objc func buttonOneTapped(sender : UIButton) {
        print("Button one tapped")
    }
    
    @objc func buttonTwoTapped(sender : UIButton) {
        print("Button two tapped")
    }
    
    @IBOutlet weak var mainView: UIImageView!
    
    var greenView: UIView!
    var blueView: UIView!
    var purpleView: UIView!
    
    
    @IBAction func segmentedControlNav(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            greenView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
            
            greenView.backgroundColor=UIColor.green
            
            self.mainView.addSubview(greenView)
            
            let labelOne = UILabel(frame: CGRect(x: 100, y: 60, width: 100, height: 30))
            
            let labelTwo = UILabel(frame: CGRect(x: 200, y: 120, width: 100, height: 30))
            
            labelOne.text = "Text_1"
            labelTwo.text = "Text_2"
            labelTwo.textColor = UIColor.red
            
            greenView.addSubview(labelOne)
            greenView.addSubview(labelTwo)
            
        }else if sender.selectedSegmentIndex == 1 {
            blueView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
            
            blueView.backgroundColor=UIColor.blue
            
            self.mainView.addSubview(blueView)
            
            var buttonOne = UIButton(type: .system)
            var buttonTwo = UIButton(type: .system)
            
            buttonOne = UIButton(frame: CGRect(x: 100, y: 60, width: 100, height: 30))
            buttonTwo = UIButton(frame: CGRect(x: 200, y: 120, width: 100, height: 30))
            
            buttonOne.backgroundColor = .black
            buttonTwo.backgroundColor = .black
            
            buttonOne.addTarget(self, action: #selector(self.buttonOneTapped), for: .touchUpInside)
            
            buttonTwo.addTarget(self, action: #selector(self.buttonTwoTapped), for: .touchUpInside)
            
            buttonOne.setTitle("Button-1", for: .normal)
            buttonTwo.setTitle("Button-2", for: .normal)
            
            blueView.addSubview(buttonOne)
            blueView.addSubview(buttonTwo)
            
            
        }else if sender.selectedSegmentIndex == 2 {
            purpleView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
            
            purpleView.backgroundColor=UIColor.purple
            self.mainView.addSubview(purpleView)
            
            let viewImageOne = UIImage(named: "image0")
            let viewImageTwo = UIImage(named: "image1")
            
            let selectedImageOne:UIImageView = UIImageView(frame: CGRect(x: 0, y: 20, width: 190, height: 150))
            let selectedImageTwo:UIImageView = UIImageView(frame: CGRect(x: 200, y: 20, width: 198, height: 150))
            
            selectedImageOne.image = viewImageOne
            selectedImageTwo.image = viewImageTwo
            
            purpleView.addSubview(selectedImageOne)
            purpleView.addSubview(selectedImageTwo)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
