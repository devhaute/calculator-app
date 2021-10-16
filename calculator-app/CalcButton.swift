//
//  CalcButton.swift
//  calculator-app
//
//  Created by devhaute on 2021/10/16.
//

import SwiftUI

struct CalcButton: View {
    let proxy: GeometryProxy
    
    var body: some View {
        Button {
            print("AC")
        } label: {
            Text("AC")
                .frame(width: proxy.size.width / 4, height: proxy.size.width / 4)
                .foregroundColor(.black)
                .background(Color(hex: "#D6D6D6"))
                .overlay(
                    Rectangle()
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color(hex: "#9C9C9C"))
                )
        }
    }
}
