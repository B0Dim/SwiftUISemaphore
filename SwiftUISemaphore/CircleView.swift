//
//  CircleView.swift
//  SwiftUISemaphore
//
//  Created by  BoDim on 01.02.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.3)
    }
}
