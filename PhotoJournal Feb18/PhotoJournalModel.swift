//
//  PhotoJournalModel.swift
//  PhotoJournal Feb18
//
//  Created by Margiett Gil on 2/18/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import Foundation

struct PhotoJournal: Codable & Equatable {
    var name: String
    let imageData: Data
    let dateCreated: Date
}
