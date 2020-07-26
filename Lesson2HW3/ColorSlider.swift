//
//  ColorSlider.swift
//  Lesson2HW1
//
//  Created by vaksakalov on 25.07.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        let valueProxy = Binding<String> (
            get: { String(format: "%.f", Double(self.value)) },
            set: {
                if let value = NumberFormatter().number(from: $0) {
                    if value.doubleValue > 255 {
                        self.value = 255
                    } else if value.doubleValue < 0 {
                        self.value = 0
                    } else {
                        self.value = value.doubleValue
                    }
                }
            }
        )

        return HStack {
            Text("\(lround(value))")
                .foregroundColor(textColor)
                .frame(width: 40, alignment: .trailing)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(textColor)
            
            TextField("", text: valueProxy)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 60, alignment: .trailing)
                .keyboardType(.numberPad)
            
        }
        .padding(.horizontal)
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(100), textColor: .red)
    }
}
