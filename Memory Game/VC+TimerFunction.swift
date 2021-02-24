//
//  VC+TimerFunction.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 24/02/2021.
//

import Foundation

extension ViewController {
    @objc func timerFunction() {
        gameTime += 1
        
        let minutes = (gameTime / 60).description
        let seconds = String(format: "%02d", gameTime % 60)
        
        timerLabel.text = "\(minutes) : \(seconds)"
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1,
                                     target: self,
                                     selector: #selector(timerFunction),
                                     userInfo: nil,
                                     repeats: true)
    }
}
