//
//  NetworkManager.swift
//  Solid
//
//  Created by Anastasiya Omak on 27/03/2024.
//

/*
 Какой принцип нарушает данный код? Исправьте код что б ничего не нарушал?
 */

/*
 В данном коде нарушается принцип единственной ответственности (Single Responsibility Principle) из принципов SOLID.
 Этот принцип гласит, что каждый класс должен быть ответственен только за одну часть функциональности программы.
 */


import UIKit

class NetworkManager {
    func fetchData(url: URL) {
        // Запрос к API
    }
}

class UIManager {
    func updateUI() {
        // Обновление пользовательского интерфейса
    }
}
