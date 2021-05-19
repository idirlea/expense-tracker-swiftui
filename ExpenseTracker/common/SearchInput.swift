//
//  SearchInput.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct SearchInput: View {
    
    @Binding var value:String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50, alignment: .center)
            .foregroundColor(Color.gray.opacity(0.2))
            .overlay(
                HStack(alignment: .center, spacing: 10, content: {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $value)
                }).padding()
            )
    }
}

struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput(value: .constant(""))
    }
}
