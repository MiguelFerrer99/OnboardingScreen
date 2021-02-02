//
//  ContentView.swift
//  OnboardingScreen
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var tutorialDone = false
    
    var body: some View {
        ZStack {
            if tutorialDone {
                HomeView(tutorialDone: self.$tutorialDone)
            } else {
                OnboardingView(tutorialDone: self.$tutorialDone)
            }
        }.animation(Animation.spring())
        .onAppear {
            if UserDefaults.standard.object(forKey: "tutorialDone") != nil {
                tutorialDone = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
