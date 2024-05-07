//
//  SigningUp.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//

import SwiftUI

struct SigningUp: View {
    
    @State private var first = ""
    @State private var last = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var passwordsMatch = true
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) { // Adjust spacing between views
                Spacer()
                
                Text("Hello! Register to get started")
                    .font(.system(size: 38, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 40)
                
                TextField("First...", text: $first)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal) // Add horizontal padding
                
                TextField("Last...", text: $last)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal) // Add horizontal padding
                
                TextField("Email...", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal) // Add horizontal padding
                
                SecureField("Password...", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal) // Add horizontal padding
                
                SecureField("Confirm Password...", text: $confirmPassword)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(.horizontal) // Add horizontal padding
                
                if !passwordsMatch {
                    Text("Passwords don't match!")
                        .foregroundColor(.red)
                        .padding(.horizontal) // Add horizontal padding
                }
                
                NavigationLink(destination: MainAppIntro()) {
                    Text("Register")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(8)
                        .padding(.horizontal) // Add horizontal padding
                }
                .padding(.bottom, 10) // Add bottom padding after the button
                
                HStack { // Wrap the "Already have an account?" text and "Log In" text in an HStack
                    Text("Already have an account? ")
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: SigningIn()) {
                        Text("Log In")
                            .foregroundColor(.blue)
                            
                    }
                }
                
                Spacer()
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [
                    Color(.systemBlue),
                    Color(.systemPink),
                    Color(.systemPurple),
                    Color(.systemYellow),
                ]),
                startPoint: .top,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
            )
        }
    }
}







        
#Preview {
    SigningUp()
}
