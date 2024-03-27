//
//  1_4_ViewController.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//
/*
Какой принцип нарушает данный код? Penguin не может летать, в то время как класс Bird предполагает, что все птицы могут летать. Исправьте код.
 */

/*
 В данном коде нарушается принцип подстановки Барбары Лисков (Liskov Substitution Principle) из принципов SOLID. Этот принцип гласит, что объекты в программе должны быть заменяемыми на экземпляры их подтипов без изменения корректности программы.
 */

import UIKit

protocol Fly {
    func fly()
}

class Bird {
    func giveEggs() {
        // Реализация полета
        print("I am flying")
    }
}
class Swift: Bird, Fly {
    func fly() {
    }
    
    override func giveEggs() {
        print("Penguins can't fly!")
    }
}

class Penguin: Bird {
    override func giveEggs() {
        print("Penguins can't fly!")
    }
}

let myBird: Bird = Penguin()
myBird.fly()  // Приведет к ошибке во время выполнения
