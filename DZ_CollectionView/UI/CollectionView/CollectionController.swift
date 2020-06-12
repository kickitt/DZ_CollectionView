//
//  CollectionController.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 11.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class CollectionController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
}
