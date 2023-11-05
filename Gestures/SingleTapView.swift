//
//  SingleTapView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct SingleTapView: View {
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, Single!")
                .onTapGesture {
                    print("TapGesture - single gesture")
                }
        }
        .scaleEffect(finalAmount + currentAmount)
        .gesture(
            MagnificationGesture()
                .onChanged{ amount in
                    currentAmount = amount - 1
                }
                .onEnded{ amount in
                    finalAmount += currentAmount
                    currentAmount = 0
                }
        )
    }
}

#Preview {
    SingleTapView()
}
