//
//  HighPriorityGestureView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct HighPriorityGestureView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hight Priority Gesture")
                .onTapGesture {
                    print("TapGesture - child gesture")
                }
        }
        .highPriorityGesture(
            TapGesture()
                .onEnded {
                    print("TapGesture - parent gesture - high priority")
                }
        )
    }
}

#Preview {
    HighPriorityGestureView()
}
