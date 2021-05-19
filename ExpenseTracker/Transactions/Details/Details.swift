//
//  Details.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 15.05.2021.
//

import SwiftUI
import MapKit

struct Details: View {
    
    @State private var region = MKCoordinateRegion(
           center: CLLocationCoordinate2D(
               latitude: 45.9432,
               longitude: 24.9668
           ),
           span: MKCoordinateSpan(
               latitudeDelta: 3,
               longitudeDelta: 3
           )
       )
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            Color.gray.opacity(0.1).ignoresSafeArea()
            VStack(alignment: .leading, spacing: 30, content: {
                HStack(alignment: .center, spacing: 10, content: {
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text("-30 RON")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                        Text("youtube membership")
                            .fontWeight(.semibold)
                        Text("15 May 2021 10:00:22")
                    })
                    Spacer()
                    Image(systemName: "clock.arrow.circlepath")
                        .font(.system(size: 40))
                })
                HStack(alignment: .top, spacing: 10, content: {
                    VStack(alignment: .leading, spacing: 10, content: {
                        HStack(content: {
                            Text("Category:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                            Text("Internet subscriptions")
                        })
                        HStack(content: {
                            Text("Receipt:")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                            Button("upload") {
                                print("upload me")
                            }
                        })
                    })
                })
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                
                HStack(alignment: .top, spacing: 10, content: {
                    VStack(alignment: .leading, spacing: 10, content: {
                        Text("Location:")
                        Map(coordinateRegion: $region)
                    })
                }).padding()
                .background(Color.white)
                .cornerRadius(20)
                Spacer()
                HStack(alignment: .center, spacing: nil, content: {
                    Spacer()
                    Button("Remove transation") {
                        print("remove the transaction");
                    }
                    .frame(width: 200, height: 20, alignment: .center)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(20)
                    .foregroundColor(Color.white)
                    .offset(y: -20)
                    Spacer()
                })
            }).padding()
        })
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        Details()
    }
}
