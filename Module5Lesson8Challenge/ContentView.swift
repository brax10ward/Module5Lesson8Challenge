//
//  ContentView.swift
//  Module5Lesson8Challenge
//
//  Created by Braxton Ward on 9/16/22.
//

import SwiftUI

let VIEW_COUNT = 10

struct ContentView: View {
    @State private var viewSelection: Int?
    @State private var viewIndex = VIEW_COUNT / 2
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Picker("View Selection", selection: $viewIndex) {
                    ForEach(0..<VIEW_COUNT) { index in
                        Text("\(index)")
                    }
                }
                .pickerStyle(.wheel)
                
                Button("Go to view \(viewIndex)") {
                    viewSelection = viewIndex
                }
                
                ForEach(0..<VIEW_COUNT) { index in
                    NavigationLink(
                        destination: MyNavigationView(selectedView: $viewSelection),
                        tag: index,
                        selection: $viewSelection,
                        label: {})
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
