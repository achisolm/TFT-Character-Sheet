//
//  Character.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 5/14/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct Character : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    var isFavorite: Bool
    var st: Int
    var dx: Int
    var iq: Int
    var skills: [String]
    var spells: [String]
}

extension Character {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

