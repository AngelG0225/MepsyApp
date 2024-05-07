//
//  WelcomeScreen.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//
import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(.systemBlue),
                    Color(.systemPink),
                    Color(.systemPurple),
                    Color(.systemYellow),
                ]),
                startPoint: .top,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
                
                ZStack {
                    Image("journal")
                        .offset(y: -210)
                    
                    VStack {
                        Text("Welcome")
                            .font(.system(size: 32, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: -10)
                        
                        Text("Traveler")
                            .font(.system(size: 32, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: -50)
                        
                        NavigationLink(destination: SigningIn()) {
                            VStack {
                                Spacer().frame(height: 0)
                                Text("Sign In")
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(width: 250, height: 45) // Keep the same size of frame for the button
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue]), startPoint: .leading, endPoint: .trailing))
                                    )
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .onTapGesture {
                            // Navigate to SigningIn view
                            // Replace this line with the navigation action to transition to the next screen
                            print("Navigate to SigningIn view")
                        }
                        
                        Text("Don't have an account yet?")
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: 10)
                        
                     NavigationLink(destination: SigningUp()) {
                            Text("Sign Up")
                                .font(.system(size: 12, weight: .semibold, design: .default))
                                .padding()
                                .underline()
                                .foregroundColor(.white)
                                .offset(y: -10)
                        }
                    }
                }
                NavigationLink(destination: MainAppIntro()) {
                    VStack {
                        Spacer().frame(height: 0)
                        Text("Skip")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 80, height: 35) // Keep the same size of frame for the button
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            )
                    }
                }
                .buttonStyle(PlainButtonStyle())
                .offset(y: 350)
                .offset(x: 130)
                .onTapGesture {
                    // Navigate to MainAppIntro view
                    // Replace this line with the navigation action to transition to the next screen
                    print("Navigate to MainAppIntro view")
                
                }
                .navigationBarBackButtonHidden(true)
                
            }
        }
    }
}




#Preview {
    WelcomeScreen()
}











/*
//
//  WelcomeScreen.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color(.systemBlue),
                    Color(.systemPink),
                    Color(.systemPurple),
                    Color(.systemYellow),
                ]),
                startPoint: .top,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(.all, edges: .all)
                
                ZStack {
                    Image("journal")
                        .offset(y: -200)
                    
                    VStack {
                        Text("Welcome")
                            .font(.system(size: 32, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: -10)
                        
                        Text("Traveler")
                            .font(.system(size: 32, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: -50)
                        
                        VStack {
                            Spacer().frame(height: 0)
                            NavigationLink(destination: SigningIn()) {
                                Text("Sign In")
                                    .foregroundColor(.white)
                            }
                            .buttonStyle(.plain)
                            .background(
                                UnevenRoundedRectangle(topLeadingRadius: 12, bottomLeadingRadius: 12, bottomTrailingRadius: 12, topTrailingRadius: 12)
                                    .frame(width: 250, height: 45)
                                    .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            )
                            
                        }
                        
                        Text("Don't have an account yet?")
                            .font(.system(size: 14, weight: .semibold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                            .offset(y: 10)
                        
                        NavigationLink(destination: SigningUp()) {
                            Text("Sign Up")
                                .font(.system(size: 12, weight: .semibold, design: .default))
                                .padding()
                                .underline()
                                .foregroundColor(.white)
                                .offset(y: -10)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    WelcomeScreen()
}
*/
