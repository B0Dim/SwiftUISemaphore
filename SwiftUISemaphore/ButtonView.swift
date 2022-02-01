//
//  ButtonView.swift
//  SwiftUISemaphore
//
//  Created by  BoDim on 01.02.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let tapButton: () -> Void
    
    var body: some View {
        Button(action: tapButton) {
            Text(title)
                .font(.title)
                .foregroundColor(.white)
                
        }
        .frame(width: 155, height: 55)
        .background(.blue)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
            .stroke(Color.white, lineWidth: 4)
        )
    }
        
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START", tapButton: {})
    }
}
