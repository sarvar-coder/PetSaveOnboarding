//
//  OnboardingBackgroundView.swift
//  PetSaveOnboarding
//
//  Created by Sarvar Boltaboyev on 15/07/25.
//

import Foundation
import SwiftUI 

struct OnboardingBackgroundView: View {
    
    let backgroundPets = Pet.backgroundPets
    
    var body: some View {
        ZStack {
            ForEach(backgroundPets) { pet in
                pet.petImage
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .position(pet.position)
            }
        }
    }
}
