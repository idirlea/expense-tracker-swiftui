//
//  TransactionItem.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct TransactionItem: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10, content: {
            Circle()
                .foregroundColor(Color.gray.opacity(0.4))
                .frame(width: 50, height: 50, alignment: .center)
                .overlay(
                    Image(systemName: "clock.arrow.circlepath")
                        .font(.system(size: 25))
                )
            
            VStack(alignment: .leading, spacing: 10, content: {
                Text("youtube Membership")
                    .fontWeight(.bold)
                Text("12 Feb 2021")
                    .font(.footnote)
                    .foregroundColor(.gray)
            })
            
            Spacer()
            
            Text("- 10 EUR")
                .fontWeight(.bold)
        })
    }
}

struct TransactionItem_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItem()
            .padding()
    }
}
