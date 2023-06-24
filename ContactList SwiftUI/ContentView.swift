//
//  ContentView.swift
//  ContactList SwiftUI
//
//  Created by Kate Kashko on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Int = 0
    let contacts = Person.getContactList()
    
    var body: some View {
        TabView(selection: $selectedTab){
            ContactsView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
                .tag(0)
            NumbersView()
                .tabItem {
                    Image(systemName: "phone.fil")
                          Text("Numbers")
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
