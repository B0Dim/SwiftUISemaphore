//
//  ContentView.swift
//  SwiftUISemaphore
//
//  Created by  BoDim on 01.02.2022.
//

import SwiftUI

enum trafficColors {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var currentColor = trafficColors.red
    @State private var titleButton = "START"
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack {
                circlesStack
                Spacer()
                ButtonView(title: titleButton) {
                    if titleButton == "START" {
                        titleButton = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding()
        }
    }
    
    private var circlesStack: some View {
                
        VStack(spacing: 30) {
            CircleView(color: .red, opacity: currentColor == .red ? lightIsOn : lightIsOff)
            CircleView(color: .yellow, opacity: currentColor == .yellow ? lightIsOn : lightIsOff)
            CircleView(color: .green, opacity: currentColor == .green ? lightIsOn : lightIsOff)
        }
    }
}



extension ContentView {
    private func changeColor() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
