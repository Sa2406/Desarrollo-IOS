//
//  Celda.swift
//  Actividad_11_SOLY
//
//  Created by user167235 on 4/21/21.
//  Copyright © 2021 user167235. All rights reserved.
//

import UIKit

class Celda: UICollectionViewCell {

    @IBOutlet var imageView: UIImageView!
    
    static let identifier = "MiCelda"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with image: UIImage){
        imageView.image = image
    }
    
    static func nib() -> UINib{
        return UINib(nibName: "Celda", bundle: nil)
    }

}
