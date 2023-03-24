//
//  LeeeoTutorialsApp.swift
//  LeeeoTutorials
//
//  Created by 077tech on 2023/03/24.
//

import SwiftUI

@main
struct LeeeoTutorialsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
