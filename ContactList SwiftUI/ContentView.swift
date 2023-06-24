//
//  ContentView.swift
//  ContactList SwiftUI
//
//  Created by Kate Kashko on 23.06.2023.
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getContactList()
    
    var body: some View {
        NavigationView{
            TabView {
                ContactsView(contacts: contacts)
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("Contacts")
                    }
                NumbersView(contact: contacts)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
