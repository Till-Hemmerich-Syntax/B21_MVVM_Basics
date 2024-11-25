//
//  AntoninosDogCreationView.swift
//  B21_MVVM_Basics
//
//  Created by Till Hemmerich on 25.11.24.
//

import SwiftUI

struct AntoninosDogCreationView: View {
    @StateObject private var dogCreationViewModel = DogCreationViewModel()
    //@EnvironmentObject var dogCreationViewModel : DogCreationViewModel
    var body: some View {
        VStack{
            HStack{
                Stepper("AGE", value: $dogCreationViewModel.age)
                Text("\(dogCreationViewModel.age)")
            }
            HStack{
                TextField("Name", text: $dogCreationViewModel.name)
                TextField("Rasse", text: $dogCreationViewModel.breed)
            }
            Button("Say Hello"){
                dogCreationViewModel.createDog()
            }
        }
    }
}


#Preview {
    AntoninosDogCreationView()
        //.environmentObject(DogCreationViewModel())
}
