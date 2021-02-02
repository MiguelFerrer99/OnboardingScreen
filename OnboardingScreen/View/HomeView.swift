//
//  HomeView.swift
//  OnboardingScreen
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var tutorialDone:Bool
    
    var body: some View {
        Button {
            tutorialDone = false
            UserDefaults.standard.removeObject(forKey: "tutorialDone")
        } label: {
            Text("Back to tutorial")
                .foregroundColor(Color.init("buttonForeground"))
                .padding(15)
                .background(Color.init("buttonBackground"))
                .cornerRadius(20)
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(tutorialDone: .constant(true))
    }
}
