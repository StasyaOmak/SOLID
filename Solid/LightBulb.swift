//
//  1_6_ViewController.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//

/*
 Какой принцип нарушает данный код? Классы верхнего уровня не должны зависеть от классов нижнего уровня.
 Написать какой класс тут верхнего уровня а какой нижнего. Исправьте код.
 */
/*
 Принцип, который нарушен в этом коде, - это принцип инверсии зависимостей (Dependency Inversion Principle) из принципов SOLID. 
 Этот принцип гласит, что модули верхнего уровня не должны зависеть от модулей нижнего уровня.
 Оба типа модулей должны зависеть от абстракций. Кроме того, абстракции не должны зависеть от деталей, а детали должны зависеть от абстракций.


 */

import UIKit

protocol SwitchableLight {
    func turnOn()
    func turnOff()
}

// Низкооуровневый класс
class LightBulb: SwitchableLight {
    func turnOn() {
        // включает свет
//    lamp.on()
    }

    func turnOff() {
        // включает свет
//    lamp.off()
    }
}
// Высокоуровневый класс
class Switch {
    let bulb: SwitchableLight

    init(bulb: SwitchableLight) {
        self.bulb = bulb
    }

    func toggle() {
        bulb.turnOn()
    }
}
