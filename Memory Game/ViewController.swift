//
//  ViewController.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var gameModeLabel: UILabel!
    @IBOutlet weak var gameCollectionView: UICollectionView!
    
    var tiles = [Tile]()
    var foundTiles = 0
    var cellWidth = CGFloat()
    
    var gameMode = 4
    
    var firstTile: Tile!
    var secondTile: Tile!
    var isFlipping = false
    
    var animationDuration = 0.5
    
    var gameTime = Int()
    var timer: Timer!
    var timerRunning = false
    
    
    
}
