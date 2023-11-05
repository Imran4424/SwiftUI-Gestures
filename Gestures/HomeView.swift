//
//  HomeView.swift
//  Gestures
//
//  Created by Shah Md Imran Hossain on 5/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var index = 0
    
    let viewList: [AnyView] = [
        AnyView(SingleTapView()),
        AnyView(MultipleTapView()),
        AnyView(LongPressedView()),
        AnyView(NestedGestureView()),
        AnyView(HighPriorityGestureView()),
        AnyView(SimultaneousGestureView()),
        AnyView(SequenceGestureView())
    ]
    
    var body: some View {
        VStack {
            Spacer()
            
            viewList[index]
            
            Spacer()
            
            HStack {
                if index != 0 {
                    Button("Previous") {
                        if index > 0 {
                            index = index - 1
                        }
                    }
                }
                
                
                Spacer()
                
                if index != viewList.count - 1 {
                    Button("Next") {
                        if index < viewList.count - 1 {
                            index = index + 1
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    HomeView()
}
