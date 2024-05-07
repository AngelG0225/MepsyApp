//
//  AppSettings.swift
//  MepsyApp
//
//  Created by Angel Guzman on 5/6/24.
//

import SwiftUI

struct AppSettings: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack {
                    Text("Settings")
                        .font(.title)
                        .padding(.horizontal)
                        .bold()
                    
                    Spacer() 
                }
                .padding(.bottom, 650) // Adjust bottom padding as needed
                
                Image(systemName: "person.circle")
                    .font(.title)
                    .padding(.top, -600)
                    .padding(.leading, -150)
                
                Text("Account")
                    .font(.system(size: 21))
                    .padding(.top, -602)
                    .padding(.leading, -100)
                    .foregroundColor(.blue)
                    .bold()
                
                Text("Edit Profile")
                    .font(.system(size: 21))
                    .padding(.top, -552)
                    .padding(.leading, -138)
                    .foregroundColor(.blue)
                    .bold()
                
                Text("Change Username")
                    .font(.system(size: 21))
                    .padding(.top, -502)
                    .padding(.leading, -100)
                    .foregroundColor(.blue)
                    .bold()
                
                Text("Change Password")
                    .font(.system(size: 21))
                    .padding(.top, -452)
                    .padding(.leading, -100)
                    .foregroundColor(.blue)
                    .bold()
                
                NavigationLink(destination: Subscription()) {
                    HStack {
                        Image(systemName: "wand.and.stars")
                            .padding(25) // Increase padding to make the button bigger
                        Text("Subscription")
                            .foregroundColor(.blue)
                            .bold()
                    }
                }
                .padding(.top, -352)
                .padding(.leading, -50)
                
                VStack {
                    NavigationLink(destination: SigningIn()) {
                        HStack {
                            Image(systemName: "power")
                                .padding(25)
                            Text("Log out")
                                .foregroundColor(.blue)
                                .bold()
                        }
                    }
                    .padding(.top, -300) // Adjust vertical padding to position the "Subscription" button above "Log out" button
                    .padding(.leading, -50)
                    
                    Button(action: {
                        // Action to perform when Log out button is tapped
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        EmptyView() // This is used to keep the NavigationLink destination
                    }
                }
                
                Spacer() // Spacer to push content to the top
            }
            .padding() // Add padding to the VStack
            
        }
    }
}





#Preview {
    AppSettings()
}
