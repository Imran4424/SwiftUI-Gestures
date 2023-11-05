//
//  SequenceGestureView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct SequenceGestureView: View {
    @State private var offset = CGSize.zero
    @State private var isDragging = false
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { value in
                offset = value.translation
            }
            .onEnded { _ in
                offset = .zero
                isDragging = false
            }
        
        let pressGesture = LongPressGesture()
            .onEnded { value in
                withAnimation {
                    isDragging = true
                }
            }
        
        let combinedGesture = pressGesture.sequenced(before: dragGesture)
        
        VStack {
            Circle()
                .fill(.red)
                .frame(width: 64, height: 64)
            
            Text("Sequence Gesture")
        }
        .scaleEffect(isDragging ? 1.5: 1)
        .offset(offset)
        .gesture(combinedGesture)
    }
}

#Preview {
    SequenceGestureView()
}
