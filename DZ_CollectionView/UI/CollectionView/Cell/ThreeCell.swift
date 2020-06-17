//
//  ThreeCell.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 16.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class ThreeCell: UICollectionViewCell {
    
    static var identifier: String = "ThreeCell"
    weak var textLabel: UILabel!
    
    var filter: FilterModel? {
        didSet {
            textLabel.text = filter?.title
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        let textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(textLabel)
        NSLayoutConstraint.activate([
            textLabel.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
            textLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            textLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
            ])
        self.backgroundColor = .green
        self.textLabel = textLabel
        self.reset()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.reset()
    }

    func reset() {
        self.textLabel.textAlignment = .center
    }
}
