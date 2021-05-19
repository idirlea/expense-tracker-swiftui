//
//  AnalyticsWidget.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 13.02.2021.
//

import SwiftUI


var colors:[Color] = [Color.red, Color.blue, Color.green, Color.pink, Color.orange, Color.yellow, Color.blue.opacity(0.4), Color.orange.opacity(0.4), Color.green.opacity(0.5)]

struct AnalyticsWidget: View {
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Text("Analytics")
                .font(.title)
                .padding([.top, .bottom])
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .firstTextBaseline, spacing: nil, content: {
                    ForEach(colors, id: \.self) { color in
                       Rectangle()
                        .frame(width: 30, height: CGFloat.random(in: 40..<200), alignment: .center)
                        .foregroundColor(color)
                        .animation(.easeInOut)
                    }
                    
                    Spacer()
                }).padding([.top, .bottom])
            })
            
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.blue.opacity(0.2), radius: 1, x: 0, y: 1)
    }
}

struct AnalyticsWidget_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsWidget()
    }
}
