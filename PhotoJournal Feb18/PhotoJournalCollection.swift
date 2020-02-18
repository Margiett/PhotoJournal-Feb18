//
//  PhotoJournalCollection.swift
//  PhotoJournal Feb18
//
//  Created by Margiett Gil on 2/18/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit
import AVFoundation

class PhotoJournalCollection: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let dataPersistance = PersistenceHelper(filename: "photoJournal.plist")
    
    var photos = [PhotoJournal]() {
        didSet {
            collectionView.reloadData()
        }
    }

}
