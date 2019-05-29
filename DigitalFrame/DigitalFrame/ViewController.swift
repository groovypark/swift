//
//  ViewController.swift
//  DigitalFrame
//
//  Created by SooVin Park on 28/05/2019.
//  Copyright © 2019 groovypark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var toggleButton:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let images = [UIImage(named:"1.jpg")!,
        UIImage(named:"2.jpeg")!,
        UIImage(named:"3.jpeg")!,
        UIImage(named:"4.png")!,
        UIImage(named:"5.jpg")!,
        UIImage(named:"6.jpg")!,
        UIImage(named:"7.jpg")!,
        UIImage(named:"8.jpg")!,
        UIImage(named:"9.jpg")!,
        UIImage(named:"10.jpg")!]
        
        imgView.animationImages = images
        imgView.animationDuration = 15.0
    }
    
    @IBAction func toggleAction(_ sender:AnyObject){
        if imgView.isAnimating {
            imgView.stopAnimating()
            toggleButton.setTitle("START", for: UIControl.State.normal )
        } else {
            imgView.startAnimating()
            toggleButton.setTitle("STOP", for: UIControl.State.normal)
        }
    }
    
    @IBAction func changeSpeedAction(_ sender:AnyObject){
        imgView.animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        toggleButton.setTitle("STOP", for: UIControl.State.normal)
        speedLabel.text = "\(speedSlider.value)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
}
