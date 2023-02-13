//
//  ContentView.swift
//  Restart
//
//  Created by kirshi on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnBoardingViewActive : Bool = true
    
    var body: some View {
        ZStack {
            if isOnBoardingViewActive{
                    OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
