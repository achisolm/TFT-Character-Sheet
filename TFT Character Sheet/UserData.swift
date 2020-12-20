//
//  UserData.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 6/29/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var characters = characterData
}
