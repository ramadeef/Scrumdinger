//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Ramesh Adeef on 2/18/24.
//

import SwiftUI


struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }.listRowBackground(scrum.theme.mainColor)
                
            }.navigationTitle("Daily Scrums")
                .toolbar {
                    Button(action: {
                        isPresentingNewScrumView = true
                    }) {
               
                        Image(systemName: "plus")
                    }
                }.accessibilityLabel("New Scrum")
                .sheet(isPresented: $isPresentingNewScrumView) {
                    NewScrumSheet(isPresentingNewScrumView: $isPresentingNewScrumView, scrums: $scrums)
                        
                }
               
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
