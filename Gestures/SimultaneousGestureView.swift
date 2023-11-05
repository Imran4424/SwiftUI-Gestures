//
//  SimultaneousGestureView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct SimultaneousGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Simultaneous Gesture")
                .onTapGesture {
                    print("TapGesture - child gesture - simultaneous")
                }
        }
        .simultaneousGesture(
            TapGesture()
                .onEnded {
                    print("TapGesture - parent gesture - simultaneous priority")
                }
        )
    }
}

#Preview {
    SimultaneousGestureView()
}
