//
//  HomeView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            HomeTab().tabItem {
                Label("Home", systemImage: "house")
            }
            
            FinanceTab().tabItem {
                Label("Finance", systemImage: "arrow.up.forward")
            }
            
            CardsTab().tabItem {
                Label("Cards", systemImage: "creditcard")
            }
            
            ProfileTab().tabItem {
                Label("Profile", systemImage: "person")
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
