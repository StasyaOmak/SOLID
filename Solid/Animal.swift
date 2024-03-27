//
//  Animal.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//

/*
 Какой принцип нарушает данный код? Если мы захотим добавить новое животное, нам придется изменить метод makeSound.
 Исправьте код что б ничего не нарушал?
 */

/*
 В данном коде нарушается принцип открытости/закрытости (Open/Closed Principle) из принципов SOLID.
 Этот принцип утверждает, что программные сущности должны быть открыты для расширения, но закрыты для модификации.
 То есть, чтобы изменить поведение класса, необходимо расширить его, а не изменять.
 */

import UIKit

protocol SoundMaker {
    func makeSound(sound: String)
}

class Animal: SoundMaker {
    let name: String

    init(name: String) {
        self.name = name
    }
    
    func makeSound(sound: String) {
        print(sound)
    }
}

let dog = Animal(name: "Dog")
dog.makeSound(sound: "Woof")

let cat = Animal(name: "Cat")
cat.makeSound(sound: "Meow")
