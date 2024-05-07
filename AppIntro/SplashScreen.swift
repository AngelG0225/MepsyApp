//
//  SplashScreen.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/25/24.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        VStack {
            VStack {
                Image("AppLogo" )
            }
        }
        //.padding(.top, 30)
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn (duration: 1.9)) {
                self.size = 1.5
                self.opacity = 1.0
            }
        }
        
    }
}
    
#Preview {
    SplashScreen()
}

