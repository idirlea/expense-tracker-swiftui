//
//  CategorySection.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 14.02.2021.
//

import SwiftUI

struct CategorySection: View {
    
    @Binding var selectedCategory:String
    
    @State var isCategorySelectorOpen:Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: nil, content: {
            Text("Select a category")
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            Text("\(selectedCategory)")
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .onTapGesture(count: 1, perform: {
            isCategorySelectorOpen.toggle()
        })
        .sheet(isPresented: $isCategorySelectorOpen, content: {
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Select a category:")
                    .font(.title2)
                    .padding()
                CategoriesList { category in
                    selectedCategory = category
                    isCategorySelectorOpen.toggle()
                }
            })
            
        })
    }
}

struct CategorySection_Previews: PreviewProvider {
    static var previews: some View {
        CategorySection(selectedCategory: .constant("Home"))
    }
}
