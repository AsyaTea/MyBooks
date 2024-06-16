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
            SearchBookView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
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
