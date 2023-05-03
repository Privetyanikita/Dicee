//
//  ViewController.swift
//  Dicee
//
//  Created by Admin on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceeElementImageView1: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var diceeElementImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRoll()
    }
    func viewRandomElement(){
        var element:[UIImage]=[UIImage(imageLiteralResourceName: "dice1"),UIImage(imageLiteralResourceName: "dice2"),UIImage(imageLiteralResourceName: "dice3"),UIImage(imageLiteralResourceName: "dice4"),UIImage(imageLiteralResourceName: "dice5"),UIImage(imageLiteralResourceName: "dice6")]
            diceeElementImageView1.image=element[Int.random(in:0..<element.count)]
            diceeElementImageView2.image=element[Int.random(in: 0..<element.count)]
    }
    func buttonRoll(){
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    @objc func buttonTapped() {
        viewRandomElement()
    }

}

