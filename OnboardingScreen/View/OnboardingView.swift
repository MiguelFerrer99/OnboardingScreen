//
//  OnboardingView.swift
//  OnboardingScreen
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var selectedCard = 0
    @Binding var tutorialDone:Bool
    
    var body: some View {
        TabView(selection: self.$selectedCard) {
            ForEach(0..<cards.count) { index in
                CardView(card: cards[index], tutorialDone: self.$tutorialDone).tag(index)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(tutorialDone: .constant(false))
    }
}
