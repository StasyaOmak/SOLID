//
//  Circle.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//

/*
 Какой принцип нарушает данный код? Исправьте код что б ничего не нарушал?
 */

/*
 В данном коде нарушается принцип открытости/закрытости (Open/Closed Principle) из принципов SOLID.
 Этот принцип утверждает, что программные сущности должны быть открыты для расширения, но закрыты для модификации.
 То есть, чтобы изменить поведение класса, необходимо расширить его, а не изменять.
 */

import UIKit

protocol Shape {
    func size() -> CGSize
}

struct Circle: Shape {
    let radius: CGFloat
    
    func size() -> CGSize {
        let diameter = radius * 2
        return CGSize(width: diameter, height: diameter)
    }
}

struct Rectangle: Shape {
    let width: CGFloat
    let height: CGFloat
    
    func size() -> CGSize {
        return CGSize(width: width, height: height)
    }
}

class SizePrinter {
    
    func printSize(of shape: Shape) {
        print(shape.size())
    }
}
