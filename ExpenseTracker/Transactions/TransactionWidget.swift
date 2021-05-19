//
//  TransactionWidget.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct TransactionWidget: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            // Amount
            HStack(alignment: .center, spacing: nil, content: {
                VStack(alignment: .leading, spacing: 10, content: {
                    HStack(alignment: .firstTextBaseline, spacing: 0, content: {
                        Text("200.").font(.title)
                            .fontWeight(.bold)
                        Text("95 EUR")
                            .font(.title3)
                            .fontWeight(.bold)
                    })
                    Text("Euro")
                        .fontWeight(.bold)
                })
                Spacer()
            })
            
            // Buttons
            HStack(alignment: .center, spacing: nil, content: {
                NavigationLink(
                    destination: NewTransactionPage(transactionType: "expense"),
                    label: {
                        HStack(alignment: .center, spacing: 10, content: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            Text("Expense")
                                .foregroundColor(.white)
                        })
                        .padding(10)
                        .frame(width: 120, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                    })
                
                NavigationLink(
                    destination: NewTransactionPage(transactionType: "income"),
                    label: {
                        HStack(alignment: .center, spacing: 10, content: {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            Text("Income")
                                .foregroundColor(.white)
                        })
                        .padding(10)
                        .frame(width: 120, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(10)
                    })
            })
            
            // Last transaction
            VStack(alignment: .leading, spacing: nil, content: {
                HStack(alignment: .center, spacing: nil, content: {
                    Text("Transactions")
                        .foregroundColor(.gray)
                        .font(.headline)
                        .fontWeight(.semibold)
                    Spacer()
                    
                    NavigationLink(
                        destination: TransactionList(),
                        label: {
                            Text("see all")
                                .foregroundColor(.blue)
                        })
                }).offset(y: 10)
                
                NavigationLink(
                    destination: Details(),
                    label: {
                        TransactionItem()
                    })
                    .offset(y: 10)
                    .padding([.bottom])
                
         
            })
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.blue.opacity(0.2), radius: 1, x: 0, y: 1)
        
    }
}

struct TransactionWidget_Previews: PreviewProvider {
    static var previews: some View {
        TransactionWidget()
            .padding()
    }
}
