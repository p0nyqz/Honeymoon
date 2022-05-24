//
//  ContentView.swift
//  Honeymoon
//
//  Created by p0nyqz on 22.05.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
                .padding()
            // FIXME: Add padding to the cards later on
            
            Spacer()
            
            FooterView(showBookingAlerts: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
