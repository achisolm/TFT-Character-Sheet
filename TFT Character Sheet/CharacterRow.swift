//
//  CharacterRow.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 5/14/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    
    var body: some View {
        HStack {
            character.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(character.name)
            Spacer()
            
            if character.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CharacterRow(character: characterData[0])
            CharacterRow(character: characterData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
