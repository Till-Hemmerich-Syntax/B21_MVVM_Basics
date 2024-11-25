//
//  CreateDogView.swift
//  B21_MVVM_Basics
//
//  Created by Till Hemmerich on 25.11.24.
//

import SwiftUI

struct CreateDogView: View {
    
    
    @StateObject private var dogCreationViewModel = DogCreationViewModel()
   // @EnvironmentObject var dogCreationViewModel : DogCreationViewModel

    var body: some View {
        VStack{
            TextField("Name", text: $dogCreationViewModel.name)
            TextField("Rasse", text: $dogCreationViewModel.breed)
            HStack{
                Text("Alter :\(dogCreationViewModel.age)")
                Stepper("Age", value: $dogCreationViewModel.age, in: 0...100)
                
            }
            Button("Save Dog"){
                dogCreationViewModel.createDog()
            }
        }
        .padding()
    }
    
}

#Preview {
    CreateDogView()
       // .environmentObject(DogCreationViewModel())
}
