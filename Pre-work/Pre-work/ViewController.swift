//
//  ViewController.swift
//  Pre-work
//
//  Created by Lorena Salinas on 4/29/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
            view.backgroundColor = randomColor
        
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
    }
    
    let fonts = ["AvenirNext-Bold", "Georgia-Bold", "Chalkduster", "Courier", "Didot-Bold"]
    
    @IBAction func changeFont(_ sender: UIButton) {
        let randomFont = getRandomFont()
                updateLabelsFont(to: randomFont)
    }
    func getRandomFont() -> UIFont {
        let randomFontName = fonts.randomElement()!
        return UIFont(name: randomFontName, size: 18)!
    }
    func updateLabelsFont(to font: UIFont) {
            Label.font = font
            Label2.font = font
            Label3.font = font
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

