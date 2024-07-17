//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Samir Sayyed on 13/07/24.
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
