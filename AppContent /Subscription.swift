//
//  Subscription.swift
//  MepsyApp
//
//  Created by Angel Guzman on 5/6/24.
//

import SwiftUI

struct Subscription: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("Unlock More for less!!!")
                    .font(.headline)
                    .padding(.top, 200) // Add padding to move the text below the back button
                    .padding(.bottom, 10) // Add padding to adjust the vertical position
                    .padding(.horizontal) // Add horizontal padding for center alignment
                
                Spacer() // Pushes the text to the middle of the screen
                
                ScrollView(.vertical) {
                    VStack(spacing: 10) { // Add spacing between images
                        Image("BASIC")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 500) // Set a smaller size for the image
                        
                        Image("STANDARD")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 500) // Set a smaller size for the image
                        
                        Image("Frame 1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350, height: 500) // Set a smaller size for the image
                    }
                    .padding(.horizontal, 20) // Add padding to the VStack
                }
                .frame(height: UIScreen.main.bounds.height) // Adjust the height of the scroll view as needed
                
                Spacer()
            }
            
        }
    }
}







#Preview {
    Subscription()
}
