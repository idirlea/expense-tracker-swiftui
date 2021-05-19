//
//  NewTransactionPage.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 14.02.2021.
//

import SwiftUI

struct NewTransactionPage: View {
    
    var transactionType:String
    
    
    @State var amount:String = ""
    
    @State var isDateSelectorOpen:Bool = false
    @State var date:Date = Date()
    @State var category:String = "-"
    @State var note:String = ""
    
    
    var body: some View {
        
        return ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            Color.gray.opacity(0.1).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 30, content: {
                
                AmountSection(amount: $amount)
                
                DateSection(date: $date)
                    .onTapGesture(count: 1, perform: {
                        isDateSelectorOpen.toggle()
                    })
                    .fullScreenCover(isPresented: $isDateSelectorOpen, content: {
                        DateSelector(date: $date)
                    })
                
                CategorySection(selectedCategory: $category)
                
                NoteSetion(text: $note)
                
                Spacer()
                
                HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Spacer()
                    Button("Add \(transactionType)") {
                        print("hello \(amount), \(category), \(note)")
                    }.frame(width: UIScreen.main.bounds.width - 100, height: 20, alignment: .center)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    .foregroundColor(.white)
                    Spacer()
                })
                
                
                
                
                
            })
        })
        .navigationTitle("Add \(transactionType)")
        
    }
}

struct NewTransactionPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView(content: {
            NewTransactionPage(transactionType: "income")
        })
        
    }
}
