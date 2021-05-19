//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1)) {
            TransactionPage().tabItem { Image(systemName: "list.bullet") }.tag(1)
            Text("Analitics Page").tabItem { Image(systemName: "chart.pie.fill") }.tag(2)
            CategoryPage().tabItem { Image(systemName: "square.grid.2x2.fill") }.tag(3)
            Text("Settings").tabItem { Image(systemName: "gear") }.tag(4)
        }
        .accentColor(.black)
        .onAppear(perform: {
            UITabBar.appearance().barTintColor = .white
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

