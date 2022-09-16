//
//  MyNavigationView.swift
//  Module5Lesson8Challenge
//
//  Created by Braxton Ward on 9/16/22.
//

import SwiftUI

struct MyNavigationView: View {
    @Binding var selectedView: Int?
    
    var body: some View {
        VStack {
            Text("I am view \(selectedView ?? 0)")
                .font(.largeTitle)
            
            Button("Go back") {
                selectedView = nil
            }
            .padding()
        }
        .navigationBarHidden(true)
        .padding()
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView(selectedView: .constant(1))
    }
}
