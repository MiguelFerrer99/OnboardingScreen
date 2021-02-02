//
//  Card.swift
//  OnboardingScreen
//
//  Created by Miguel Ferrer Fornali on 2/2/21.
//

import Foundation

struct Card:Identifiable {
    var id = UUID()
    var image:String
    var title:String
    var description:String
    var getStartedButton:Bool
}

//La variable "cards" es publica en todos los archivos del proyecto. Podemos llamarla en la vista directamente para obtener los datos
var cards:[Card] = [
    Card(image: "recycle", title: "Recycle", description: "All your family and friends can recycle. Separate rubbish depending on if it's plastic, glass, cartoon or aluminium. Put each one in the appropiate container ♻️", getStartedButton: false),
    Card(image: "help_environment", title: "Help environment", description: "Recycling you help to reduce pollution and damage to the environment, providing a clear atmosphere. Furthermore, you will feel better about yourself 😊", getStartedButton: false),
    Card(image: "save_money", title: "Save money", description: "Now you can recycle and save money on your expenses. And sure you have enough to buy a gift for a special person 🎁", getStartedButton: false),
    Card(image: "app_icon", title: "Are you ready?", description: "", getStartedButton: true)
]
