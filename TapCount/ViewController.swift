//
//  ViewController.swift
//  TapCount
//
//  Created by MAC on 20/04/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var countDecrement = 0
    var label : UILabel!
    var labelDecrement : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 50, height: 30)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //Label decrement
        let labelDecrement = UILabel()
        labelDecrement.frame = CGRect(x: 170, y: 170, width: 50, height: 30)
        labelDecrement.text = "0"
        view.addSubview(labelDecrement)
        self.labelDecrement = labelDecrement
        
        //Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 170, width: 60, height: 60)
        button.setTitle("Increment with click", for:.normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //Decrement Button
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 180, y: 170, width: 50, height: 30)
        decrementButton.setTitle("Decrement with click", for: .normal)
        decrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
    
    }
    
    @objc func incrementCount(){
        self.count += 1
        self.label.text="\(self.count)"
    }
    
    @objc func decrementCount(){
        self.countDecrement -= 1
        self.labelDecrement.text = "\(self.countDecrement)"
    }

}

