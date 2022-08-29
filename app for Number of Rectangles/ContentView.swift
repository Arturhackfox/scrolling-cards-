//
//  ContentView.swift
//  app for Number of Rectangles
//
//  Created by Arthur Sh on 29.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        ScrollView{
            LazyVStack{
                ForEach(1...100, id: \.self){index in
                    Rectangle()
                        .fill(RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200))
                        .frame(height: pow(1.1, CGFloat(index)))
                        
                }
               
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
