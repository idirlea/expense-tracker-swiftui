//
//  CategoryPage.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct CategoryPage: View {
    var body: some View {
        NavigationView {
            CategoriesList()
                .navigationTitle("Categories")
        }
    }
}

struct CategoryPage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryPage()
    }
}
