//
//  ContentView.swift
//  B21_MVVM_Basics
//
//  Created by Till Hemmerich on 25.11.24.
//

import SwiftUI

struct ContentView: View {
    //@StateObject private var createDogViewModel = DogCreationViewModel()
    var body: some View {
        VStack {
            TabView{
                Tab("a", systemImage: "person") {
                    AntoninosDogCreationView()
                }
                Tab("b",systemImage: "person"){
                    CreateDogView()
                }
                
            }//.environmentObject(createDogViewModel)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
