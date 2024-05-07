//
//  SignUpSuccessfull.swift
//  Mepsy
//
//  Created by Angel Guzman on 5/2/24.
//

import SwiftUI

struct SignUpSuccessfull: View {
    @State private var buttonOffset: CGFloat = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Successmark")
                    .offset(y: -90)
                
                Text("All Done")
                    .font(.custom("ABeezee", size: 30))
                    .multilineTextAlignment(.center)
                    .offset(y: -100)
                    .padding()
                
                Text("Click continue to access account")
                    .font(.custom("ABeezee", size: 16))
                    .multilineTextAlignment(.center)
                    .offset(y: -120)
                    .padding()
                
                NavigationLink(destination: AppSettings()) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 48)
                        .frame(maxWidth: 300)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle())
                .offset(y: buttonOffset)
            }
            .navigationBarHidden(true)
            .onAppear {
                buttonOffset = -130
            }
        }
        .offset(y: 30)
    }
}


            

#Preview {
    SignUpSuccessfull()
}
