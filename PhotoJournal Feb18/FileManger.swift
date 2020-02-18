//
//  FileManger.swift
//  PhotoJournal Feb18
//
//  Created by Margiett Gil on 2/18/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import Foundation
extension FileManager {
    static func getDocumentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    static func pathToDocumentsDirectory(with filename: String) -> URL {
        return getDocumentsDirectory().appendingPathComponent(filename)
    }
}
