//
//  ContactDetailsView.swift
//  ContactList SwiftUI
//
//  Created by Kate Kashko on 23.06.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        NavigationView{
            Form {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 200, height: 200)
                    Spacer()
                }
                
                Label(contact.phoneNumber, systemImage:  "phone")
                Label(contact.email, systemImage:  "tray")
            }
            .navigationTitle(contact.fullName)
            Spacer()
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContactList().first!)
    }
}
