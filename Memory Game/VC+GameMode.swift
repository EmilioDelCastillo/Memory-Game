//
//  VC+GameMode.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit

extension ViewController {
    @IBAction func changeGameMode(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 { // 4 x 4
            gameModeLabel.text = "Easy"
            gameMode = 4
            resetAction(nil)
        } else { // 6 x 6
            gameModeLabel.text = "Hard"
            gameMode = 6
            resetAction(nil)
        }
        
    }
}
