//
//  DateSelector.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 14.02.2021.
//

import SwiftUI

struct DateSelector: View {
    
    @Binding var date: Date
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            HStack(alignment: .center, spacing: nil, content: {
                Spacer()
                Text("Select a date")
                    .font(.title)
                Spacer()
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.black)
                    .font(.title)
                    .onTapGesture(count: 1, perform: {
                        presentationMode.wrappedValue.dismiss()
                    })
            })
            
            DatePicker(selection: $date) {
                Text("Date")
            }.datePickerStyle(GraphicalDatePickerStyle())
            Spacer()
        }).padding()
    }
}

struct DateSelector_Previews: PreviewProvider {
    static var previews: some View {
        DateSelector(date: .constant(Date()))
    }
}
