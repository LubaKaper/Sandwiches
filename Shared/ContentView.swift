//
//  ContentView.swift
//  Shared
//
//  Created by Liubov Kaper  on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    var body: some View {
        
        // HStack is horizontal
        //VStack is vertical
        List(sandwiches) { sandwich in
            Image(systemName: "photo")
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}
