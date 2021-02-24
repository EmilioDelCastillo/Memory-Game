//
//  VC+ViewDidLoad.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 14/02/2021.
//

import UIKit

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resetAction(nil)
        gameModeLabel.text = "Easy"
    }
}
