//
//  PhotoCellCollectionViewCell.swift
//  PhotoJournal Feb18
//
//  Created by Margiett Gil on 2/18/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit
protocol PhotoCellDelegate: AnyObject {
    func didSelect(for cell: PhotoCellCollectionViewCell)
}

class PhotoCellCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageName: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    weak var delegate: PhotoCellDelegate?
    
    lazy var dateFormatter:  DateFormatter = {
      let formatter = DateFormatter()
      formatter.dateFormat = "MMMM d, yyyy h:mm a"
      formatter.timeZone = .current
      return formatter
    }()
    
    func configureCell(for image: PhotoJournal) {
        imageName.text = image.name
        
        dateLabel.text = dateFormatter.string(from: image.dateCreated)
        
        guard let image = UIImage(data: image.imageData) else {
            return
        }
        imageView.image = image
    }
    @IBAction func buttonAction(_ sender: UIButton) {
        delegate?.didSelect(for: self)
    }
    
    
}
