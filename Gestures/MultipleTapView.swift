//
//  MultipleTapView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct MultipleTapView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Double Tap")
                .onTapGesture(count: 2) {
                    print("Double tap")
                    // it depends on count value
                }
            
            Text("Penta Tap")
                .onTapGesture(count: 5) {
                    print("Penta Tap")
                    // it depends on count value
                }
        }
        .frame(width: 150, height: 150)
        .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
        .rotationEffect(currentAmount + finalAmount)
        .gesture(
            RotationGesture()
                .onChanged{ angle in
                    currentAmount = angle
                }
                .onEnded{ angle in
                    finalAmount = finalAmount + currentAmount
                    currentAmount = .zero
                }
        )
    }
}

#Preview {
    MultipleTapView()
}
