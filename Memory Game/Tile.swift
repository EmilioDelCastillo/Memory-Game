//
//  Tile.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit

enum TileStatus {
    case UNKNOWN, FOUND, FLIPPED
}


class Tile: UILabel {

    var identifier: Int!
    var status: TileStatus = .UNKNOWN
    var animationDuration = 0.5
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    func update() {
        self.font = .preferredFont(forTextStyle: .largeTitle)
        self.textAlignment = .center
        
        switch status {
        case .FLIPPED:
        UIView.transition(with: self,
                          duration: animationDuration,
                          options: .transitionFlipFromLeft,
                          animations: { [self] in
                            text = identifier.description
                            backgroundColor = .orange
                          })
        
        case .FOUND:
        UIView.transition(with: self,
                          duration: animationDuration,
                          options: .transitionCrossDissolve,
                          animations: { [self] in
                            self.text = "✅"
                            self.backgroundColor = .green
                          })
            
        case .UNKNOWN:
        UIView.transition(with: self,
                          duration: animationDuration,
                          options: .transitionFlipFromRight,
                          animations: { [self] in
                            self.text = "?"
                            self.backgroundColor = .lightGray
                          })
        }
        
    }
}
