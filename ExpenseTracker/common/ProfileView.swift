//
//  ProfileView.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        Circle()
            .foregroundColor(.gray)
            .frame(width: 30, height: 30, alignment: .center)
            .overlay(
                Text("ID")
                    .font(.headline)
            )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
