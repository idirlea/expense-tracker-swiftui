//
//  AmountSection.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 14.02.2021.
//

import SwiftUI

struct AmountSection: View {
    
    @Binding var amount:String
    
    var body: some View {
        HStack(alignment: .top, spacing: nil, content: {
            VStack(alignment: .leading, spacing: nil, content: {
                Text("EUR")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Balance: 200.95 EUR")
            })
            Spacer()
            TextField("0.00", text: $amount)
                .multilineTextAlignment(.trailing)
                .font(.title3)
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct AmountSection_Previews: PreviewProvider {
    static var previews: some View {
        AmountSection(amount: .constant("20.00"))
    }
}
