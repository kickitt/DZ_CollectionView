//
//  BaseCell.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 15.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
    }
    
    func addViews(){
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
