//
//  ShapesGameVC.swift
//  Colors & More
//
//  Created by Kinney Kare on 12/21/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

class ShapesGameVC: UIViewController {

    @IBOutlet weak var titleOfPage: UILabel!
    @IBOutlet weak var squareImage: UIButton!
    @IBOutlet weak var ovalImage: UIButton!
    @IBOutlet weak var rectangleImage: UIButton!
    @IBOutlet weak var octagonImage: UIButton!
    @IBOutlet weak var plusSignImage: UIButton!
    @IBOutlet weak var starImage: UIButton!
    @IBOutlet weak var pentagonImage: UIButton!
    @IBOutlet weak var triangleImage: UIButton!
    @IBOutlet weak var circleImage: UIButton!
    
    @IBOutlet weak var numberOfScore: UILabel!
   
    @IBOutlet weak var strikeOne: UIButton!
    @IBOutlet weak var strikeTwo: UIButton!
    @IBOutlet weak var strikeThree: UIButton!
    
    var theshapes = [UIButton]()
    var shuffleArray = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        hideStrikes()
        
        theshapes = [squareImage, ovalImage, rectangleImage, octagonImage, plusSignImage, starImage, pentagonImage, triangleImage, circleImage]
        
        shuffled()
        
    }
    

//this hides all three strink images
    func hideStrikes() {
        strikeOne.isHidden = true
    strikeTwo.isHidden = true
        strikeThree.isHidden = true
    }
    
//Shuffle the shapes
    func shuffled() {
        
        for _ in 0..<theshapes.count {
            let rand = Int(arc4random_uniform(UInt32(theshapes.count)))
            shuffleArray.append(theshapes[rand])
        }
        
    }

}
