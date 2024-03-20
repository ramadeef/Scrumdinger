//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ramesh Adeef on 2/17/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
