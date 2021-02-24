//
//  VC+Reset.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit

extension ViewController {
    @IBAction func resetAction(_ sender: UIButton?) {
        makeTiles()
        foundTiles = 0
        gameCollectionView.reloadData()
        layoutCollectionView()
        
        // Reset tiles
        firstTile = nil
        secondTile = nil
        isFlipping = false
        
        // Reset timer
        gameTime = 0
        timerLabel.text = "0 : 00"
        timerLabel.backgroundColor = .gray
        timer?.invalidate()
        timerRunning = false
        
        
    }
}
