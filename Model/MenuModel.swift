//
//  MenuModel.swift
//  SwiftUITest
//
//  Created by Georgi Malkhasyan on 11/22/20.
//

import Foundation


struct MenuItem: Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var rating: Int
}

struct  MenuModel{
    
    var testMenuItem = MenuItem(id: 1, name: "P pizza", description: "American pizza", price: 14.00, rating: 6)
    
    
    var menu: [MenuItem] = [MenuItem(id: 1, name: "Margherita", description: "Tomato sauce, mozzarella, and oregano", price: 12.00, rating: 3),
                            MenuItem(id: 2, name: "Quattro Stagioni", description: " Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives, and oregan", price: 12.00, rating: 4),
                            MenuItem(id: 3, name: "Marinara", description: "Tomato sauce, garlic and basil", price: 12.00, rating: 5),
                            MenuItem(id: 4, name: "Quattro Formaggi.", description: "Tomato sauce, mozzarella, parmesan, gorgonzola cheese, artichokes, and oregano", price: 12.00, rating: 1),
                            MenuItem(id: 5, name: "Romana", description: "Tomato sauce, mozzarella, anchovies, capers, and oregano pizza", price: 12.00, rating: 2),
                            MenuItem(id: 6, name: "Americana", description: "Tomato sauce, mozzarella, sausage and french fries pizza", price: 12.00, rating: 5),
                            MenuItem(id: 7, name: "Bismarck", description: "Tomato sauce, mozzarella, ham, and fried egg pizza", price: 12.00, rating: 2)
                            
    ]
}




