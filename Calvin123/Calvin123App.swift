//
//  Calvin123App.swift
//  Calvin123
//
//  Created by User06 on 2021/1/8.
//

import SwiftUI

@main
struct Calvin123App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Copver()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
