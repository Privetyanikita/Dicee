//
//  ViewController.swift
//  Dicee
//
//  Created by Admin on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceeElementImageView1: UIImageView!
    @IBOutlet weak var diceeElementImageView2: UIImageView!
    
    @IBOutlet weak var pointLabel: UILabel!
    
    var pointCount=0
    let diceArray:[UIImage]=[UIImage(imageLiteralResourceName: "dice1"),
                             UIImage(imageLiteralResourceName: "dice2"),
                             UIImage(imageLiteralResourceName: "dice3"),
                             UIImage(imageLiteralResourceName: "dice4"),
                             UIImage(imageLiteralResourceName: "dice5"),
                             UIImage(imageLiteralResourceName: "dice6")]
    
    @IBAction func buttonForRoll(_ sender: UIButton) {
        diceeElementImageView1.image=diceArray[Int.random(in:0..<diceArray.count)]
        diceeElementImageView2.image=diceArray[Int.random(in: 0..<diceArray.count)]
        if diceeElementImageView1.image==diceeElementImageView2.image{
            pointCount+=1
            pointLabel.text=String(pointCount)
        }
    }
}
