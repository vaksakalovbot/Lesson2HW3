//
//  ColorViewWithFrame.swift
//  Lesson2HW1
//
//  Created by vaksakalov on 25.07.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import SwiftUI

struct ColorViewWithFrame: View {
    @Binding var valueR: Double
    @Binding var valueG: Double
    @Binding var valueB: Double

    var body: some View {
        Color(UIColor(red: CGFloat(valueR/255),
                      green: CGFloat(valueG/255),
                      blue: CGFloat(valueB/255),
                      alpha: 1.0))
            .frame(height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.white, lineWidth: 4)
            )
            .padding()
    }
}

struct ColorViewWithFrame_Previews: PreviewProvider {
    static var previews: some View {
        ColorViewWithFrame(valueR: .constant(100),
                           valueG: .constant(100),
                           valueB: .constant(100))
    }
}
