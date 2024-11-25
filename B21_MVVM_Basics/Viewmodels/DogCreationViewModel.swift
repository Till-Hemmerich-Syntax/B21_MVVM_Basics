//
//  DogCreationViewModel.swift
//  B21_MVVM_Basics
//
//  Created by Till Hemmerich on 25.11.24.
//

import Foundation


@MainActor
class DogCreationViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    @Published var breed: String = ""
    @Published var dog : Dog?
    func createDog(){
        let dog = Dog(name: name, breed: breed, age: age)
        self.dog = Dog(name: name, breed: breed, age: age)
        print("\(dog): Wuff Wuff!")
    }
}
