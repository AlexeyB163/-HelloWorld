//
//  ViewController.swift
//  HelloWorld
//
//  Created by User on 21.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!

    @IBOutlet weak var showTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.isHidden = true
        helloWorldLabel.textColor = .green
        showTextButton.layer.cornerRadius = 10
    } 
// Тип элемента в sender в параметрах нужен если мы хотим изменять атрибуты элемента. Но у нас уже есть этот аутлет, поэтому здесь мы не работаем с sender. Sender нужно убрать.

    @IBAction func showTextButtonPressed() {
        helloWorldLabel.isHidden.toggle() // toogle меняет значение на противоположное
       
       if helloWorldLabel.isHidden {
           showTextButton.setTitle("Show text", for: .normal)
       } else {
           showTextButton.setTitle("Hide text", for: .normal)
       }
    }
    
}

