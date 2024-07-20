//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Samir Sayyed on 14/07/24.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums : [DailyScrum]
    var body: some View {
        NavigationStack{
            List($scrums){ $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrum")
            .toolbar {
                Button(action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("Add Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
