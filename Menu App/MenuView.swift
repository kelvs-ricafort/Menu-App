//
//  MenuView.swift
//  Menu App
//
//  Created by Kelvin on 4/25/23.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems: [MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(item: item)
        }
        
        .onAppear(perform: {
            // Call data service
            menuItems = dataService.getData()
        })
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
