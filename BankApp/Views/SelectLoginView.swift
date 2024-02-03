//
//  SelectLoginView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct SelectLoginView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image("login").resizable().frame(width: 200, height: 200)
                Text("Welcome").font(.largeTitle).bold()
                Text("Lorem ipsum sit amet consectetur.\nEt neque vitae aniquet odio mauris nisi a.")
                    .multilineTextAlignment(.center)
                    .padding()
                HStack {
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("LOGIN")
                            .frame(width: 175, height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 2)
                            )
                    }
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("SIGN UP")
                            .frame(width: 175, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                }
            }.navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    SelectLoginView()
}
