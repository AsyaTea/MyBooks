//
//  MyBooksApp.swift
//  MyBooks
//
//  Created by Asya Tealdi on 16/05/2024.
//

import SwiftUI

@main
struct MyBooksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
