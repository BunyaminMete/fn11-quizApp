//
//  QuestionViewController.swift
//  fn11
//
//  Created by Bünyamin Mete on 17.07.2024.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var returnToMainVC: UIButton!
    
    var gifImageView = UIImageView()
    var quizModel = Quiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.applyMainScreenLabelStyle()
        
        if let jeremyGif = UIImage.gifImageWithName("output-onlinegiftools") {
            gifImageView = UIImageView(image: jeremyGif)
            gifImageView.contentMode = .scaleAspectFit
            gifImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(gifImageView)
            
            NSLayoutConstraint.activate([
                gifImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                gifImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                gifImageView.widthAnchor.constraint(equalToConstant: 200.0),
                gifImageView.heightAnchor.constraint(equalToConstant: 200.0)
            ])
            gifImageView.isHidden = true
        } else {
            print("GIF yüklenemedi.")
        }
    }
    
    @IBAction func handleAnswerButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else {
            print("Button title is nil")
            print((sender.titleLabel?.text)!)
            return
        }
        
        let userAnswerRight = quizModel.checkAnswer(userAnswer: userAnswer)
        
        if userAnswerRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        showGIFAnimation()
        quizModel.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        gifImageView.isHidden = false
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideGIFAnimation), userInfo: nil, repeats: false)
    }
    
    
    @IBAction func handleReturnButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showGIFAnimation() {
        gifImageView.isHidden = false
    }
    
    @objc func hideGIFAnimation() {
        gifImageView.isHidden = true
    }
    
    @objc func updateUI() {
        questionLabel.text = quizModel.getQuestionText()
        scoreLabel.text = "Score: \(quizModel.getScore())"
        
        trueButton.setTitle("Doğru", for: .normal)
        falseButton.setTitle("Yanlış", for: .normal)
        
        trueButton.backgroundColor = UIColor.clear
        trueButton.layer.cornerRadius = 20
        
        falseButton.backgroundColor = UIColor.clear
        falseButton.layer.cornerRadius = 20
        
    }
}
