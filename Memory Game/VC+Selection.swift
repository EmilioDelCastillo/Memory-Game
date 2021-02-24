//
//  VC+Selection.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 24/02/2021.
//

import UIKit

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return !isFlipping
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)!
        let tile = cell.subviews[0] as! Tile
        
        // Start the timer only when the player begins the game
        if !timerRunning {
            startTimer()
            timerRunning = true
        }
        
        // First tile must not be found. It can't be flipped since it wouldn't be nil then.
        if firstTile == nil && tile.status != .FOUND {
            firstTile = tile
            tile.status = .FLIPPED
            tile.update()
            
            
        } else if tile.status == .UNKNOWN {
            secondTile = tile
            tile.status = .FLIPPED
            tile.update()
            isFlipping = true
            
        // A little time for the player to see the number
            DispatchQueue.main.asyncAfter(deadline: .now() + animationDuration) {
                self.compare()
                self.isFlipping = false
            }
        }
    }
    
    func compare() {
        if firstTile.identifier == secondTile.identifier {
            // It's a match!
            firstTile.status  = .FOUND
            secondTile.status = .FOUND
            
            foundTiles += 2
            if foundTiles == tiles.count {
                win()
            }
            
        } else {
            firstTile.status  = .UNKNOWN
            secondTile.status = .UNKNOWN
        }
        firstTile.update()
        secondTile.update()
        
        firstTile = nil
        secondTile = nil
    }
    
    func win(){
        timer.invalidate()
        let time = timerLabel.text!
        timerLabel.text = "You won in \(time)"
        timerLabel.backgroundColor = .green
    }
}
