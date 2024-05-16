//
//  MainView.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/05/2024.
//

import SwiftUI

struct MainView: View {
    let persistenceController = PersistenceController.shared
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Main Page", systemImage: "house.fill")
                }
            ContentView()
                .tabItem {
                    Label("Second Page", systemImage: "books.vertical.fill")
                }
        }
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
    }
}

#Preview {
    MainView()
}
