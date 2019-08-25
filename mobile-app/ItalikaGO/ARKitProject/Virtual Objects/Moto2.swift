//
//  Moto2.swift
//  ItalikaGo
//
//  Created by DeveloperDM on 8/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation


import Foundation

class Moto2: VirtualObject {
    
    override init() {
        super.init(modelName: "moto2", fileExtension: "scn", thumbImageFilename: "italika-black", title: "DS150")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
