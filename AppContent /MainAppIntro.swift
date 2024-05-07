//
//  MainAppIntro.swift
//  MepsyApp
//
//  Created by Angel Guzman on 5/6/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct MainAppIntro: View {
    // Initialize CLLocationManager
    let locationManager = CLLocationManager()

    var body: some View {
        NavigationView {
            VStack {
                // Request location authorization and start updating location
                MapView()
                    .frame(height: 400)
                    .padding()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.top, 20)
                    .onAppear {
                        locationManager.requestWhenInUseAuthorization()
                        locationManager.desiredAccuracy = kCLLocationAccuracyBest
                        locationManager.distanceFilter = kCLDistanceFilterNone
                        locationManager.startUpdatingLocation()
                    }
                
                Text("Hey Welcome!\nClick on one of the options above to start your journey.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .bold()
                
                Spacer()
            }
            .navigationBarItems(leading:
                HStack(spacing: 10) {
                    HamburgerMenuButton()
                    Spacer()
                },
                trailing:
                HStack(spacing: 45) {
                    ActivityButton()
                    FoodButton()
                    SightsButton()
                }
            )
        }
    }
}

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.layer.cornerRadius = 20
        mapView.layer.masksToBounds = true
        mapView.showsUserLocation = true
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Update map view if needed
    }
}

struct HamburgerMenuButton: View {
    var body: some View {
        NavigationLink(destination: AppSettings()) {
            Image(systemName: "line.horizontal.3")
                .imageScale(.large)
        }
    }
}

struct ActivityButton: View {
    var body: some View {
        NavigationLink(destination: ActivityButton()) {
            Text("Activity")
                .padding(8)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct FoodButton: View {
    var body: some View {
        NavigationLink(destination: FoodButton()) {
            Text("Food")
                .padding(8)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct SightsButton: View {
    var body: some View {
        NavigationLink(destination: SightsButton()) {
            Text("Sights")
                .padding(8)
                .background(Color.orange)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct MainAppIntro_Previews: PreviewProvider {
    static var previews: some View {
        MainAppIntro()
    }
}




#Preview {
    MainAppIntro()
}
