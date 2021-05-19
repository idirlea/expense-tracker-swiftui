//
//  Category.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct Category: Identifiable {
    var id: UUID = UUID()
    var name:String
    var color:Color
    var icon: String
    var iconColor: Color
}

var defaultCategories = [
    Category(name: "Housing", color: Color.yellow, icon: "house.fill", iconColor: Color.white),
    Category(name: "Transportation", color: Color.blue, icon: "bus", iconColor: Color.white),
    Category(name: "Food", color: Color.green, icon: "bag.fill", iconColor: Color.white),
    Category(name: "Utilities", color: Color.gray, icon: "wrench.and.screwdriver.fill", iconColor: Color.white),
    Category(name: "Clothing", color: Color.purple, icon: "cart.fill", iconColor: Color.white),
    Category(name: "Medical/Healthcare", color: Color.red, icon: "cross.case.fill", iconColor: Color.white),
    Category(name: "Insurance", color: Color.blue, icon: "cross.case.fill", iconColor: Color.white),
    Category(name: "Household Items/Supplies", color: Color.yellow, icon: "cross.case.fill", iconColor: Color.white),
    Category(name: "Personal", color: Color.orange, icon: "tv.fill", iconColor: Color.white),
    Category(name: "Subscriptions", color: Color.blue, icon: "bonjour", iconColor: Color.white),
    Category(name: "Investments", color: Color.green, icon: "creditcard.fill", iconColor: Color.white),
    Category(name: "Savings", color: Color.green, icon: "creditcard.fill", iconColor: Color.white),
    Category(name: "Gifts/Donations", color: Color.green, icon: "gift.fill", iconColor: Color.white),
    Category(name: "Entertainment", color: Color.blue, icon: "gamecontroller.fill", iconColor: Color.white),
    Category(name: "Other", color: Color.blue, icon: "cube.transparent.fill", iconColor: Color.white),
]
