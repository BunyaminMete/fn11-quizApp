//
//  Quiz.swift
//  fn11
//
//  Created by Bünyamin Mete on 20.07.2024.
//

import Foundation

struct Quiz {
    var questionNumber = 0
    var score = 0
    
    
    let questions = [
        Question(q: "Fenerbahçe, 1907 yılında kurulmuştur.", a: "Doğru"),
        Question(q: "Fenerbahçe'nin stadyumu Ülker Stadyumu, Şükrü Saracoğlu Spor Kompleksi olarak adlandırılmaktadır.", a: "Doğru"),
        Question(q: "Fenerbahçe'nin renkleri sarı ve yeşildir.", a: "Yanlış"),
        Question(q: "Fenerbahçe, Türkiye Süper Lig'inde en fazla şampiyon olan takımdır.", a: "Yanlış"),
        Question(q: "Fenerbahçe'nin ambleminde bir meşe yaprağı bulunur.", a: "Doğru"),
        Question(q: "Fenerbahçe'nin kuruluş amacı sadece futbol faaliyetleri yürütmekti.", a: "Yanlış"),
        Question(q: "Fenerbahçe'nin ezeli rakibi Galatasaray'dır.", a: "Doğru"),
        Question(q: "Fenerbahçe, 2020-2021 sezonunda Türkiye Kupası'nı kazanmıştır.", a: "Yanlış"),
        Question(q: "Fenerbahçe'nin resmi marşı 'Fenerbahçe Marşı'dır.", a: "Doğru"),
        Question(q: "Fenerbahçe, bir Avrupa kupasında final oynamış ilk Türk takımıdır.", a: "Doğru")
    ]
    
    mutating func checkAnswer(userAnswer : String) -> Bool{
        if userAnswer == questions[questionNumber].answer {
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        }
        else{
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String {
        return questions[questionNumber].text
    }
    
    
    
}
