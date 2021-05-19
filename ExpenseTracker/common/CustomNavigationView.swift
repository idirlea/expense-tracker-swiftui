//
//  CustomNavigationView.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        HStack {
            ProfileView()
            Spacer()
            Image(systemName: "bell.fill")
                .font(.title2)
        }.padding()
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
