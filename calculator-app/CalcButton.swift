//
//  CalcButton.swift
//  calculator-app
//
//  Created by devhaute on 2021/10/16.
//

import SwiftUI

struct CalcButton: View {
    let proxy: GeometryProxy
    let calcType: CalcType
    let backgroundColor: String
    
    var body: some View {
        Button {
            print(calcType.calcIdentifier)
        } label: {
            Text(calcType.calcIdentifier)
                .frame(
                    width: calcType == .Number(number: 0) ? proxy.size.width / 2 : proxy.size.width / 4,
                    height: proxy.size.width / 4
                )
                .foregroundColor(.white)
                .background(Color(hex: backgroundColor))
                .overlay(
                    Rectangle()
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color(hex: "#2C272B"))
                )
        }
    }
}
//CalcButton(proxy: proxy, calcType: .Number(number: 4))
