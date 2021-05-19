//
//  CategoriesList.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct CategoriesList: View {
    
    var onCategorySelection: ((String) -> Void)? = nil
    
    var body: some View {
        List(defaultCategories) { category in
            HStack(alignment: .center, spacing: 10, content: {
                Circle()
                    .frame(width: 38, height: 38, alignment: .center)
                    .foregroundColor(category.color)
                    .overlay(
                        Image(systemName: category.icon)
                            .foregroundColor(category.iconColor)
                    )
                Text(category.name)
                Spacer()
            }).onTapGesture(count: 1, perform: {
                if let onCategoryHandler = onCategorySelection {
                    onCategoryHandler(category.name)
                }
            })
        }.frame(width: UIScreen.main.bounds.width)
    }
}

struct CategoriesList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(content: {
            CategoriesList()
                .navigationTitle("Categories")
        })
        
    }
}
