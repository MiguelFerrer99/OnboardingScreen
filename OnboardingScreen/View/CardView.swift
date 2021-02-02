//
//  CardView.swift
//  OnboardingScreen
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import SwiftUI

struct CardView: View {
    
    var card:Card
    @Binding var tutorialDone:Bool
    
    var body: some View {
        VStack {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
            
            Text(card.title)
                .font(.title)
                .bold()
                .foregroundColor(.primary)
            
            Text(card.description)
                .lineLimit(5)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding()
            
            if card.getStartedButton {
                Button(action: {
                    tutorialDone = true
                    UserDefaults.standard.setValue(true, forKey: "tutorialDone")
                }, label: {
                    Text("Get started")
                        .foregroundColor(Color.init("buttonForeground"))
                        .padding(15)
                        .background(Color.init("buttonBackground"))
                        .cornerRadius(20)
                })
            }
        }.padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card(image: "", title: "", description: "", getStartedButton: false), tutorialDone: .constant(false))
    }
}
