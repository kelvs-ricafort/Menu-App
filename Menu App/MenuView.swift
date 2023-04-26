//
//  MenuView.swift
//  Menu App
//
//  Created by Kelvin on 4/25/23.
//

import SwiftUI

struct MenuView: View {
    var menuItems: [MenuItem] = [MenuItem]()
    var body: some View {
        List(menuItems) { item in
            HStack {
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color(.brown)
                .opacity(0.1)
            )
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
