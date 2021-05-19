//
//  NoteSetion.swift
//  ExpenseTracker
//
//  Created by Ionut Dirlea on 20.02.2021.
//

import SwiftUI

struct NoteSetion: View {
    
    @Binding var text:String
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Text("Note:")
                .font(.headline)
                .fontWeight(.bold)
            TextEditor(text: $text)
                .frame(height: 100, alignment: .leading)
                .border(Color.gray.opacity(0.3), width: 1)
                .foregroundColor(.gray)
            
            
        })
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct NoteSetion_Previews: PreviewProvider {
    static var previews: some View {
        NoteSetion(text: .constant("Hello"))
    }
}
