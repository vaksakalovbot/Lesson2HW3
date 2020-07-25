//
//  ContentView.swift
//  Lesson2HW1
//
//  Created by vaksakalov on 25.07.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var valueR: Double
    @State var valueG: Double
    @State var valueB: Double

    var body: some View {
        ZStack {
            Color(UIColor(red: 10/255, green: 100/255, blue: 150/255, alpha: 1))
               .edgesIgnoringSafeArea(.all)
            VStack {
                ColorViewWithFrame(valueR: $valueR, valueG: $valueG, valueB: $valueB)
                ColorSlider(value: $valueR, textColor: .red)
                ColorSlider(value: $valueG, textColor: .green)
                ColorSlider(value: $valueB, textColor: .blue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(valueR: 50, valueG: 100, valueB: 200)
    }
}
