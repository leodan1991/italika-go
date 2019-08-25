//
//  Moto1.swift
//  ItalikaGo
//
//  Created by DeveloperDM on 8/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation

class Moto1: VirtualObject {
    
    override init() {
        super.init(modelName: "moto1", fileExtension: "scn", thumbImageFilename: "italika-black", title: "FT150")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
