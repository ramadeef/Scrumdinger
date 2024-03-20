# Article

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Overview

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->

### Section header

<!--@START_MENU_TOKEN@-->Text<!--@END_MENU_TOKEN@-->
### Section header
The default SwiftUI view file declares two structures. The first structure conforms to the View protocol, which has a single requirement: a body property that returns a View. In the body property, you describe the content, layout, and behavior of the view. The second structure defines a preview for that view to display on the canvas.

command+A select all autoformat control + I
Acceessibilty 
    .accessibilityElement(children: .ignore)
    .accessibilityLabel("Time remaining")
    
    The List needs a way to identify individual items in the collection.It should need to have identifiable
    protocol to work. 

Navigation
NavigationStack -> NavigationLink(destination: DetailView(scrum:scrum)).
        .navigationTitle("Daily Scrums") can be add in stack level

        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                        
                }.listRowBackground(scrum.theme.mainColor)
                
            }
        }.navigationTitle("Daily Scrums")


Source of truth
Maintaining multiple copies of information can introduce inconsistencies that lead to bugs in your app. To avoid data inconsistency bugs, use a single source of truth for each data element in your app. Store the element in one location—the source of truth—and any number of views can access that same piece of data.

You can create sources of truth throughout your code. How and where you define each source of truth depends on whether the data is shared among multiple views and whether the data changes.

In Scrumdinger, you’ll establish a source of truth in ScrumdingerApp, and other views will share access to it.

As per list, Picker also need to have Identifiable protocol to work

the @State attribute to a property to identify it as a source of truth, but the @State property wrapper works only for value types, such as structures and enumerations

SwiftUI provides property wrappers that declare a reference type as a source of truth: @ObservedObject, @StateObject, and @EnvironmentObject. To use these property wrappers with your class, you need to make your class observable.  


