//
//  BaseViewController.swift
//  DZ_CollectionView
//
//  Created by Roman Berezin on 11.06.2020.
//  Copyright © 2020 Roman Berezin. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setupController()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupController()
    }
    
    func setupController() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 117/255, green: 175/255, blue: 255/255, alpha: 1)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .all
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}
