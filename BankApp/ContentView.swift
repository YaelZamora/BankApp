//
//  ContentView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        OnboardingView()
    }
}

#Preview {
    ContentView()
}


extension Binding where Value == String {
    func max(_ limit: Int) -> Self {
        if self.wrappedValue.count > limit {
            DispatchQueue.main.async {
                self.wrappedValue = String(self.wrappedValue.dropLast())
            }
        }
        return self
    }
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.black)
            .padding(10)
    }
}
