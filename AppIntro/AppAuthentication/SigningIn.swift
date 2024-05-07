//
//  SigningIn.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//

import SwiftUI

final class SigningInViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            print("No email or password found")
            return
        }
        Task {
            do {
                let returnUserData = try await AuthenticationManager.shared.createUser(email: email, password: password)
                print("Success")
                print(returnUserData)
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
}

struct SigningIn: View {
    
    @StateObject private var viewmodel = SigningInViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background with linear gradient
                LinearGradient(gradient: Gradient(colors: [
                    Color(.systemBlue),
                    Color(.systemPink),
                    Color(.systemPurple),
                    Color(.systemYellow),
                ]),
                startPoint: .top,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
                
                VStack {
                    
                    Text("Welcome")
                        .font(.system(size: 42, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                        .offset(y: -5)
                    
                    Text("back!")
                        .font(.system(size: 42, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                        .offset(y: -30)
                    
                    
                    TextField("Email...", text: $viewmodel.email)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding()
                        .offset(y: -25)
                    
                    SecureField("Password...", text: $viewmodel.password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .padding()
                        .offset(y: -55)
                    
                    Button(action: {
                        viewmodel.signIn()
                    }) {
                        Text("Sign In")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding()
                            .offset(y: -55)
                    }
                    
                    NavigationLink(destination: UserForgot()) {
                        Text("Forgot Username")
                            .font(.system(size: 15, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            .offset(y: -65)
                    }.buttonStyle(PlainButtonStyle()) // Add PlainButtonStyle to remove default button style
                    
                    NavigationLink(destination: PassForgot()) {
                        Text("Forgot Password")
                            .font(.system(size: 15, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            .offset(y: -85)
                    }.buttonStyle(PlainButtonStyle()) // Add PlainButtonStyle to remove default button style
                    
                }
                .padding()
                
            }
            .navigationBarBackButtonHidden(false)
        }
    }
}



#Preview {
    SigningIn()
}

