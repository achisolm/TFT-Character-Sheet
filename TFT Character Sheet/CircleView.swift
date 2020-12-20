//
//  CircleView.swift
//  TFT Character Sheet
//
//  Created by Adam Chisolm on 5/12/20.
//  Copyright © 2020 Adam Chisolm. All rights reserved.
//

import SwiftUI

struct CircleView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.red, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(image: Image("durin"))
    }
}
