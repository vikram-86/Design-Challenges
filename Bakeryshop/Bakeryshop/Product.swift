//
//  Product.swift
//  Bakeryshop
//
//  Created by Vikram on 27/03/2021.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let imageName: String
    let rating: String
    let category: Category
    let calories: String
    let time: String
    let price: String
}

var placeHolders: [Product] = [
    Product(name: "Choco Cake",
            description: "Icing caramels gingerbread sugar plum muffin. Pudding soufflé dessert cupcake cheesecake dragée donut tootsie roll powder. Lemon drops liquorice caramels. Tart powder halvah toffee. ",
            imageName: "5",
            rating: "4.9",
            category: .cakes,
            calories: "250",
            time: "1-2 days",
            price: "34"),
    
    Product(name: "Rainbow cupcakes",
            description: "Icing caramels gingerbread sugar plum muffin. Pudding soufflé dessert cupcake cheesecake dragée donut tootsie roll powder. Lemon drops liquorice caramels. Tart powder halvah toffee.",
            imageName: "4",
            rating: "3.4",
            category: .dessert,
            calories: "125",
            time: "2 hours",
            price: "12"),
    
    Product(name: "Devils Revenge Pizza",
            description: "Icing caramels gingerbread sugar plum muffin. Pudding soufflé dessert cupcake cheesecake dragée donut tootsie roll powder. Lemon drops liquorice caramels. Tart powder halvah toffee.",
            imageName: "devil",
            rating: "5",
            category: .western,
            calories: "500",
            time: "4 hours",
            price: "32"),
    
    Product(name: "Sutha's mercy",
            description: "Icing caramels gingerbread sugar plum muffin. Pudding soufflé dessert cupcake cheesecake dragée donut tootsie roll powder. Lemon drops liquorice caramels. Tart powder halvah toffee.",
            imageName: "burger",
            rating: "5",
            category: .western,
            calories: "800",
            time: "1 hour",
            price: "50")
]
