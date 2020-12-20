//
//  CharacterList.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 6/24/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct CharacterList: View {
    @EnvironmentObject var userData: UserData
    @State var modalDisplayed = false
    
    var body: some View {
        NavigationView {
            List {
//                Toggle(isOn: $userData.showFavoritesOnly){
//                    Text("Favorites Only")
//                }
                
                Button(action: { self.modalDisplayed = true }) {
                    Text("Create New Character")
                }.sheet(isPresented: $modalDisplayed) {
                    CreateCharacterView(onDismiss: {
                        self.modalDisplayed = false
                    })
                }
                    
                
                ForEach(userData.characters) { character in
                    if (!self.userData.showFavoritesOnly || character.isFavorite){
                        NavigationLink(destination: CharacterSheet(character: character)) {
                            CharacterRow(character: character)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Characters"))
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterList()
        .environmentObject(UserData())
    }
}
