//
//  ViewController.swift
//  SwiftGenSample
//
//  Created by Shota Nakagami on 2018/11/20.
//  Copyright © 2018 Shota Nakagami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberImages = Asset.allImages.filter { $0.name.hasNamespacePath(of: Asset.Number.self) }
        numberImages.forEach { print($0.name) }
        
        let animalImages = Asset.allImages.filter { $0.name.hasNamespacePath(of: Asset.Animal.self) }
        animalImages.forEach { print($0.name) }
    }
}

extension String {
    func hasNamespacePath(of assetType: Any) -> Bool {
        guard let namespace = self.split(separator: "/").first else { return false }
        return namespace.capitalized == String(describing: assetType.self)
    }
}
