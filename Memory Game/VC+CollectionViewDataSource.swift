//
//  VC+CollectionViewDataSource.swift
//  Memory Game
//
//  Created by Emilio Del Castillo on 24/02/2021.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tiles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tileCell", for: indexPath)
        
        let thisTile = tiles[indexPath.row]
        
        let offset: CGFloat = 4
        thisTile.frame = CGRect(x: offset/2,
                                y: offset/2,
                                width : cellWidth  - offset,
                                height: cellWidth - offset )
        
        if cell.subviews.count > 0 {
            for view in cell.subviews {
                view.removeFromSuperview()
            }
        }
        
        cell.addSubview(thisTile)
        
        return cell
    }
    
    
}
