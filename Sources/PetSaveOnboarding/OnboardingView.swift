//
//  OnboardingView.swift
//  PetSaveOnboarding
//
//  Created by Sarvar Boltaboyev on 15/07/25.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    // 1
    let onboarding: OnboardingModel
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12, style: .circular)
                .fill(.white)
                .shadow(radius: 12)
                .padding(.horizontal, 20)
            VStack(alignment: .center) {
                VStack {
                    
                    Text(onboarding.title)
                        .foregroundColor(.Dark)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                    Text(onboarding.description)
                        .foregroundColor(.Dark)
                        .multilineTextAlignment(.center)
                        .padding([.top, .bottom], 10)
                        .padding(.horizontal, 10)
                    onboarding.image
                        .resizable()
                        .frame(width: 140, height: 140, alignment: .center)
                        .foregroundColor(.Dark)
                        .aspectRatio(contentMode: .fit)
                }
                .padding()
            }
        }
    }
}
