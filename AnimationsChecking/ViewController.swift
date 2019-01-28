//
//  ViewController.swift
//  AnimationsChecking
//
//  Created by Ashli Rankin on 1/28/19.
//  Copyright © 2019 Ashli Rankin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var image: UIImageView!
  
  @IBOutlet weak var buttoin: UIButton!
  private var animator: UIViewPropertyAnimator!
  override func viewDidLoad() {
   
    super.viewDidLoad()
  animator = UIViewPropertyAnimator(duration: 0.0, curve: .easeInOut, animations: {
      self.image.transform = CGAffineTransform.init(scaleX: 10, y: 10)
    })
  }

  @IBAction func sliderMoved(_ sender: UISlider) {
    animator.fractionComplete = CGFloat(sender.value)
  }
  
  @IBAction func buttonPressed(_ sender: UIButton) {
    
    if image.image == #imageLiteral(resourceName: "icons8-heart-outline-filled-50 (3).png") {
      UIView.transition(with: image, duration: 1.0, options: [.transitionCrossDissolve], animations: {
        self.image.image = #imageLiteral(resourceName: "icons8-heart-outline-filled-50 (4)")
      })
    }
    else {
      UIView.transition(with: image, duration: 1.0, options: [.transitionCrossDissolve], animations: {
        self.image.image = #imageLiteral(resourceName: "icons8-heart-outline-filled-50 (3).png")
      })
    }
    
    
  }
}

