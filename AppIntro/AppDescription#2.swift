//
//  AppDescription#2.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/28/24.
//
import SwiftUI

struct AppDescription_2: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("Main Image")
                }
                .padding(.bottom, 150)
                .scaleEffect(1.0)
                .opacity(1.0)
                
                VStack {
                    HStack {
                        Image("loader")
                            .offset(y: -70)
                        
                        Text("Discover new destinations, must-see sights, and unique dining experiences with our app.")
                            .font(.custom("ABeezee", size: 17))
                            .frame(width: 250)
                            .multilineTextAlignment(.center)
                            .offset(y: -60)
                        
                        Image("loader")
                            .offset(y: -70)
                            .navigationBarBackButtonHidden(true)
                    }
                }
                
                // NavigationLink instead of Button
                NavigationLink(destination: WelcomeScreen()) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .frame(width: 100)
                        .padding()
                        .offset(y: -30)
                }
                .buttonStyle(PlainButtonStyle())
                 
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

#Preview {
    AppDescription_2()
}






/*



//
//  AppDescription#2.swift
//  Mepsy
//
//  Created by Angel Guzman on 4/28/24.
//

import SwiftUI

struct AppDescription_2: View {
    @State private var isActive = false
    @State private var size = 1.0
    @State private var opacity = 1.0
    
    var body: some View {
        VStack {
            VStack {
                Image("Main Image" )
            }
            
        .padding(.bottom, 150)
        .scaleEffect(size)
        .opacity(opacity)
        
        VStack {
            HStack {
                Image("loader")
                    .offset(y: -70)
                
                Text("Discover new destinations, must-see sights, and unique dining experiences with our app.")
                    .font(.custom("ABeezee", size: 17))
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                    .offset(y: -60)
                
                
                Image("loader")
                    .offset(y: -70)
                
                    .navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}
#Preview {
    AppDescription_2()
}
*/
