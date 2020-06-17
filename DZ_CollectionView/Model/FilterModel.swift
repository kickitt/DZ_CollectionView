//
//  FilterModel.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 16.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

struct FilterModel {
    let title: String
    
    static func getFilters() -> [FilterModel] {
        return [FilterModel(title: "Apple"),
        FilterModel(title: "Hewlett Packard"),
        FilterModel(title: "Lenovo"),
        FilterModel(title: "Dell"),
        FilterModel(title: "Asus"),
        FilterModel(title: "Acer"),
        FilterModel(title: "Razer"),
        FilterModel(title: "MSI"),
        FilterModel(title: "E-Machines"),
        FilterModel(title: "Vinga")]
    }
}
