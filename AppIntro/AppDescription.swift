//
//  AppDescription.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//

import SwiftUI

struct AppDescription: View {
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        VStack {
            VStack {
                Image("Main Screen Image" )
            }
            
        .padding(.bottom, 150)
        .scaleEffect(size)
        .opacity(opacity)
        
        VStack {
            HStack {
                Image("loader")
                    .offset(y: -50)
                
                Text("Explore with enthusiasm and uncover the best of what the world has to offer")
                    .font(.custom("ABeezee", size: 17))
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                    .offset(y: -40)
                
                
                Image("loader")
                    .offset(y: -50)
                }
            }
        }
    }
}

#Preview {
    AppDescription()
}
