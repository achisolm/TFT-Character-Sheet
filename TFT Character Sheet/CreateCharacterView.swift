//
//  CreateCharacterView.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 9/6/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct CreateCharacterView: View {
    var onDismiss: () -> ()
    @State private var newName = ""
    @State private var newST = ""
    @State private var newDX = ""
    @State private var newIQ = ""
    
    
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Name")
                    TextField("Name", text: $newName)
                }
                HStack {
                    Text("ST")
                    TextField("ST", text: $newST)
                        .keyboardType(UIKeyboardType.decimalPad)
                }
                HStack {
                    Text("DX")
                    TextField("DX", text: $newDX)
                }
                HStack {
                    Text("IQ")
                    TextField("IQ", text: $newIQ)
                }
            }
            
            Button(action: {self.onDismiss() }) {
                Text("Cancel")
            }
        }
    }
}

struct CreateCharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCharacterView(onDismiss: {
            _ = false
        })
    }
}
