//
//  VC+LayoutCollectionView.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 24/02/2021.
//

import UIKit

extension ViewController {
    func layoutCollectionView() {
        self.view.layoutIfNeeded()
        self.gameCollectionView.layoutIfNeeded()
        
        cellWidth = gameCollectionView.bounds.width / CGFloat(gameMode)
        let myLayout = UICollectionViewFlowLayout ()
        myLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)
        
        myLayout.sectionInset = UIEdgeInsets.zero
        myLayout.minimumInteritemSpacing = 0
        myLayout.minimumLineSpacing = 0
        
        gameCollectionView.collectionViewLayout = myLayout
        gameCollectionView.reloadData()
    }
}
