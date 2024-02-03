//
//  OnboardingView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct OnboardingView: View {
    @State private var selection = 0
    let titulo = ["Send money", "Pay your bills", "Manage your cards"]
    let descripicion = ["Lorem ipsum sit amet consectetur. Et neque vitae aniquet odio mauris nisi a.", "You can pay your bills from anywhere with just a tap on your smartphone and let us take care of the rest.", "Lorem ipsum sit amet consectetur. Et neque vitae aniquet odio mauris nisi a."]
    let images = ["business", "phone", "check"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(images[selection])
                    .resizable()
                    .frame(width: 200, height: 200)
                Text(titulo[selection])
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 50)
                Text(descripicion[selection])
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                ZStack {
                    if selection == 2 {
                        NavigationLink {
                            SelectLoginView()
                        } label: {
                            Text("Get started")
                                .frame(width: 300, height: 50)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                    } else {
                        Button {
                            selection += 1
                        } label: {
                            Text("Next")
                                .frame(width: 300, height: 50)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(25)
                        }
                    }
                }
                .padding(.top, 50)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigation) {
                    HStack {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: (selection == 0) ? 20 : 10)
                            .foregroundColor((selection == 0) ? .blue : .gray)
                            .onTapGesture {
                                selection = 0
                            }
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: (selection == 1) ? 20 : 10)
                            .foregroundColor((selection == 1) ? .blue : .gray)
                            .onTapGesture {
                                selection = 1
                            }
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(width: (selection == 2) ? 20 : 10)
                            .foregroundColor((selection == 2) ? .blue : .gray)
                            .onTapGesture {
                                selection = 2
                            }
                    }
                }
            }
            .toolbar {
                NavigationLink {
                    SelectLoginView()
                } label: {
                    Text("Skip")
                }.foregroundColor(.black)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
