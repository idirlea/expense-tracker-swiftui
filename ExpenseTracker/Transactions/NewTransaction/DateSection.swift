//
//  DateSection.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 14.02.2021.
//

import SwiftUI

struct DateSection: View {
    
    @Binding var date:Date
    
    var formatter = DateFormatter()
    
    @State var isDateSelectorOpen:Bool = false
    
    var body: some View {
        formatter.dateFormat = "d MMM y"
        
        return HStack(alignment: .top, spacing: nil, content: {
            Text("Date")
                .font(.headline)
                .fontWeight(.bold)
            Spacer()
            Text(formatter.string(from: date))
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .fullScreenCover(isPresented: $isDateSelectorOpen, content: {
            DateSelector(date: $date)
        })
    }
}

struct DateSection_Previews: PreviewProvider {
    static var previews: some View {
        DateSection(date: .constant(Date()))
    }
}
