//
//  ViewController.swift
//  fn11
//
//  Created by Bünyamin Mete on 16.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var welcomeText: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeText.applyMainScreenLabelStyle()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           // UIButton stili uygulama
           startButton.applyButtonStyle()
       }
    
    
    @IBAction func handleStartButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToQuestions", sender: self)
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        self.tabBarController?.tabBar.isHidden = false
//    }
    
//    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
//        // Unwind işlemi sırasında yapılacak işlemler (boş olabilir)
//    }
    
    
    
    
    
}

