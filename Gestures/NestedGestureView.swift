//
//  NestedGestureView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct NestedGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Nested Gesture")
                .onTapGesture {
                    print("TapGesture - child gesture")
                }
        }
        .onTapGesture {
            print("TapGesture - parent gesture")
        }
    }
}

#Preview {
    NestedGestureView()
}
