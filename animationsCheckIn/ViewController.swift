//
//  ViewController.swift
//  animationsCheckIn
//
//  Created by Nathalie  on 1/28/19.
//  Copyright © 2019 Nathalie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var catOrDogPic: UIButton!
    @IBOutlet weak var catOrDogLabel: UILabel!
    @IBOutlet weak var scaleSlider: UISlider!
    @IBOutlet weak var duck: UIImageView!
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
    })
    }

    @IBAction func flipPic(_ sender: UIButton) {
        if catOrDogPic.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: catOrDogPic, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.catOrDogPic.setImage(UIImage(named:"dog"), for: .normal)
            })
            catOrDogLabel.text = "dog"
        } else {
            UIView.transition(with: catOrDogPic, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.catOrDogPic.setImage(UIImage(named: "cat"), for: .normal)
            })
            catOrDogLabel.text = "cat"
        }
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
    
}
//With the duck asset provided, use a UISlider and UIViewPropertyAnimator to perform a scale transform on the duck.
//Use a UIButton and the UIView.transition() class method to toggle between two images and UILabel.
