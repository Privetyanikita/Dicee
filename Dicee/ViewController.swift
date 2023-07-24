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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceeElementImageView1.image=randomDiceElement(diceArray)
        diceeElementImageView2.image=randomDiceElement(diceArray)
    }
    
    func randomDiceElement(_ arrayImage:[UIImage]) -> UIImage{
        let randomElement=arrayImage[Int.random(in: 0..<diceArray.count)]
        return randomElement
    }
    
    @IBAction func buttonForRoll(_ sender: UIButton) {
        diceeElementImageView1.image=randomDiceElement(diceArray)
        diceeElementImageView2.image=randomDiceElement(diceArray)
        if diceeElementImageView1.image==diceeElementImageView2.image{
            pointCount+=1
            pointLabel.text=String(pointCount)
        }
    }
}
