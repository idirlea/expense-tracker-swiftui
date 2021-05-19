//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct TransactionList: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            Color.gray.opacity(0.1).ignoresSafeArea()
                VStack(alignment: .center, spacing: 20, content: {
                    SearchInput(value: .constant("")).padding()

                    ScrollView(.vertical, showsIndicators: false, content: {
                        LazyVStack(alignment: .center, spacing: 10, pinnedViews: [], content: {
                            VStack(alignment: .leading, spacing: nil, content: {
                                HStack(alignment: .center, spacing: nil, content: {
                                    Text("20 January")
                                        .foregroundColor(Color.gray)
                                    Spacer()
                                    Text("-90 EUR")
                                })
                                .padding([.leading, .trailing])
                                
                                VStack(alignment: .leading, spacing: 20, content: {
                                    ForEach(1...4, id: \.self) { count in
                                        NavigationLink(
                                            destination: Details(),
                                            label: {
                                                TransactionItem()
                                            }).buttonStyle(PlainButtonStyle())
                                        
                                    }
                                })
                                .padding()
                                .background(Color.white)
                                .cornerRadius(20)
                            })
                        })
                    }).padding()
                })
            
            
        }).navigationTitle("Transations")
    }
}

struct TransactionList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(content: {
            TransactionList()
            
        })
        
    }
}
