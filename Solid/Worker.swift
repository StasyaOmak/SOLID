//
//  1_5_ViewController.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//

/*
 Какой принцип нарушает данный код? Классы не должны зависеть от методов, которые они не используют. Исправьте код.
 */
/*
 В принципах SOLID, Принцип разделения интерфейса (Interface Segregation Principle, ISP) гласит, что клиенты не должны зависеть от интерфейсов, которые они не используют.
 Вместо этого, интерфейсы должны быть разделены так, чтобы клиенты использовали только те методы, которые им нужны.
 */

import UIKit

protocol Worker {
    func work()
}

protocol Eater {
    func eat()
}

class Robot: Worker {
    func work() {
        // Робот работает
    }
}

class Human: Worker, Eater {
    func work() {
        print("I'm working")
    }
    
    func eat() {
        print("I'm eating")
    }
}

