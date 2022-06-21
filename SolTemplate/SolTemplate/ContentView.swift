//
//  ContentView.swift
//  SolTemplate
//
//  Created by Danny Schnabel on 2022-06-21.
//

import SwiftUI
import Solstice

struct ContentView: View {
    @State var angle: Double = 0
        
    var body: some View {
        ZStack {
            Color.cyan
            HStack(spacing: 0) {
                SlantText(theText: "Temp", angle: $angle)
                SlantText(theText: "Late", angle: $angle)
            }
        }
        .ignoresSafeArea()
        .onAppear(perform: change)
    }
    
    func change() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1/6) {
            angle = angle + 1
            change()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
