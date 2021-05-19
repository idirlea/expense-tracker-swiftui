//
//  TransactionPage.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct TransactionPage : View {
    
    @State var searchValue:String = ""
    
    var body: some View {
        NavigationView(content: {
            GeometryReader(content: { geometry in
                ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
                    Color.gray.opacity(0.1).ignoresSafeArea()
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(alignment: .leading, spacing: 10, content: {
                            CustomNavigationView()
                            SearchInput(value: $searchValue)
                                .padding([.leading, .trailing, .bottom])
                            
                            TransactionWidget()
                                .padding()
                            
                            AnalyticsWidget()
                                .padding()
                            
                            Spacer()
                        })
                    })
                })
            }).navigationBarHidden(true)
        })
    }
}

struct TransactionPage_Previews: PreviewProvider {
    static var previews: some View {
        TransactionPage()
    }
}
