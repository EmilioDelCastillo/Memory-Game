//
//  VC+MakeTiles.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit
extension ViewController {
    func makeTiles () {
        tiles = []
        
        let tileCount = gameMode * gameMode
        let halfOfTiles = tileCount / 2
        
        for i in 1...tileCount {
            let tile = Tile()
            if i > halfOfTiles {
                tile.identifier = i - halfOfTiles
            } else {
                tile.identifier = i
            }
            tile.update() // To test
            tiles.append(tile)
        }
        tiles.shuffle()
        
    }
}
