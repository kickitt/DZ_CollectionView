//
//  CollectionController.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 11.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class CollectionController: BaseViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView!
    var threeCell = ThreeCell()
    let spacing: CGFloat = 20
    var columnCount: CGFloat = 0
    private let dataSource: [FilterModel] = FilterModel.getFilters()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            self.view.topAnchor.constraint(equalTo: collectionView.topAnchor),
            self.view.bottomAnchor.constraint(equalTo: collectionView.bottomAnchor),
            self.view.leadingAnchor.constraint(equalTo: collectionView.leadingAnchor),
            self.view.trailingAnchor.constraint(equalTo: collectionView.trailingAnchor),
        ])
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(OneCell.self, forCellWithReuseIdentifier: OneCell.identifier)
        collectionView.register(TwoCell.self, forCellWithReuseIdentifier: TwoCell.identifier)
        collectionView.register(ThreeCell.self, forCellWithReuseIdentifier: ThreeCell.identifier)
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = UIColor().withAlphaComponent(0)
    }
    
    //MARK: - UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count = 0
        if section == 2 {
            count = dataSource.count
        } else {
            count = 20
        }
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: UICollectionViewCell?
        
        if indexPath.section == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: OneCell.identifier, for: indexPath)
            if let cell = cell as? OneCell {
                cell.textLabel.text = "\(indexPath.section), \(indexPath.item)"
            }
        }
        
        if indexPath.section == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: TwoCell.identifier, for: indexPath)
            if let cell = cell as? TwoCell {
                cell.textLabel.text = "\(indexPath.section), \(indexPath.item)"
            }
        }
        
        if indexPath.section == 2 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: ThreeCell.identifier, for: indexPath)
            if let cell = cell as? ThreeCell {
                cell.filter = dataSource[indexPath.item]
            }
        }
        return cell!
    }
    
    //MARK: - UICollectionViewDelegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Tapped", indexPath.section, indexPath.row)
    }
    
    //MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size = CGSize(width: 0, height: 0)
        
        if indexPath.section == 0 {
            columnCount = 4
            let itemWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columnCount - 1)) * spacing) / CGFloat(columnCount)
            size = CGSize(width: itemWidth, height: itemWidth)
        }
        
        if indexPath.section == 1 {
            columnCount = 2
            let itemWidth = (collectionView.frame.size.width - 2 * spacing - CGFloat((columnCount - 1)) * spacing) / CGFloat(columnCount)
            size = CGSize(width: itemWidth, height: itemWidth / 2)
        }
        
        if indexPath.section == 2 {
            columnCount = 3
            threeCell.prepareForReuse()
            threeCell.textLabel.text = dataSource[indexPath.item].title
            size = threeCell.systemLayoutSizeFitting(CGSize(width: 0, height: 30),
                                                     withHorizontalFittingPriority: .fittingSizeLevel,
                                                     verticalFittingPriority: .required)
        }
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
}
