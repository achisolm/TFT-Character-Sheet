//
//  ContentView.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 5/12/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct CharacterSheet: View {
    @EnvironmentObject var userData: UserData
    var character: Character
    
    var characterIndex: Int {
        userData.characters.firstIndex(where: {$0.id == character.id})!
    }
    
    @State private var strength = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(character.name)")
                    .font(.title)
                
                Button(action: {
                    self.userData.characters[self.characterIndex].isFavorite.toggle()
                }) {
                    if self.userData.characters[self.characterIndex].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
            HStack {
                VStack {
                    HStack {
                        Text("ST :")
                        Text("\(character.st)")
                    }
                    HStack {
                        Text("DX :")
                        Text("\(character.dx)")
                    }
                    HStack {
                        Text("IQ :")
                        Text("\(character.iq)")
                    }
                }
                .offset(y: -100)
                
                Spacer()
                
                CircleView(image: character.image)
                    .aspectRatio(1, contentMode: .fit)
                    .offset(y: -130)
            }
            
            HStack {
                Text("Attack")
                Text("Broadsword")
            }
            Text("Defense")
        }
        .padding()
        .offset(y: -100)
        .navigationBarTitle(Text(character.name), displayMode: .inline)
    }
}

struct CharacterSheet_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSheet(character: characterData[0])
    }
}
