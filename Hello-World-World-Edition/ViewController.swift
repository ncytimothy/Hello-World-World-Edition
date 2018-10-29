//
//  ViewController.swift
//  Hello-World-World-Edition
//
//  Created by Tim Ng on 10/29/18.
//  Copyright © 2018 Tim Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//----------------------------------------------------------------------------------
// MARK:- Properties
    
    var greetings = ["Welcome",
                     "Velkommen",
                     "Welkom",
                     "歡迎",
                     "Bienvenue",
                     "Willkommen",
                     "ようこそ",
                     "Benvenuto",
                     "Välkommen",
                     "환영하다",
                     "Bienvenido",
                     "欢迎",
                     "Tervetuloa",
                     "Bem-vindo",
                     "Добро пожаловать"
                  ]
    
    var pressMes = ["Press Me",
                    "Trykk på Me",
                    "Druk op mij",
                    "按我",
                    "Appuyez-moi",
                    "Drück mich",
                    "私を押す",
                    "Premi Me",
                    "Tryck på Me",
                    "나를 압박해라",
                    "Presionarme",
                    "按我",
                    "Paina Me",
                    "Pressione-me",
                    "Нажмите Me"
                  ]
    
//----------------------------------------------------------------------------------
// MARK:- Outlets
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var pressMeButton: UIButton!
    
    
//----------------------------------------------------------------------------------
// MARK:- Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
//----------------------------------------------------------------------------------
// MARK:- Actions
    
    @IBAction func pressMePressed(_ sender: Any) {
        let randomIndex = arc4random_uniform(UInt32(greetings.count))
        
        welcomeLabel.text = greetings[Int(randomIndex)]
        
        // Optional Chaining for titleLabel
        // Essentially, we want to fail gracefully when
        // pressMeButton.titleLabel is nil
        pressMeButton.setTitle(pressMes[Int(randomIndex)], for: .normal)
        
    }
    
    
//----------------------------------------------------------------------------------
    

}

