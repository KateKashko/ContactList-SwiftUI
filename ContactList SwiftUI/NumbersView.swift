//
//  NumbersView.swift
//  ContactList SwiftUI
//
//  Created by Kate Kashko on 23.06.2023.
//

import SwiftUI

struct NumbersView: View {
    let contact: [Person]
    
    var body: some View {
        List(contact) { contact in
            Section(header: Text(contact.fullName)) {
                Label(contact.phoneNumber, systemImage: "phone")
                Label(contact.email, systemImage: "tray")
                
            }
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contact: Person.getContactList())
    }
}
