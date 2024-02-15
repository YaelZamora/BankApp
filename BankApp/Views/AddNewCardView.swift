//
//  AddNewCardView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 15/02/24.
//

import SwiftUI

struct AddNewCardView: View {
    @State private var placeholder = ""
    @State private var expirityMonth = ""
    @State private var expirityYear = ""
    @State private var cvv = ""
    @State private var cardNumber = ""
    @State private var expirityDateBool = false
    @State private var cvvBool = false
    @State private var cardAdded = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    VStack (alignment: .leading) {
                        Text("Placeholder Name").bold()
                        TextField("", text: $placeholder).padding().overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 1)
                        ).background(.black.opacity(0.1))
                    }.padding()
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Expirity Date").bold()
                            HStack {
                                TextField("", text: $expirityMonth.max(2))
                                Text("/")
                                TextField("", text: $expirityYear.max(2))
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "questionmark.circle")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                }
                            }.padding()
                                .background(.black.opacity(0.1))
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5).stroke(.gray)
                                )
                        }.padding()
                        
                        VStack (alignment: .leading) {
                            Text("CVV").bold()
                            HStack {
                                TextField("", text: $cvv.max(3))
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "exclamationmark.circle")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                }
                            }.padding()
                                .background(.black.opacity(0.1))
                                .cornerRadius(5)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5).stroke(.gray)
                                )
                        }.padding(.horizontal)
                    }
                    
                    VStack (alignment: .leading) {
                        Text("Card Number").bold()
                        
                        TextField("", text: $cardNumber.max(16)).padding()
                            .background(.black.opacity(0.1))
                            .cornerRadius(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5).stroke(.gray)
                            )
                    }.padding(.horizontal)
                    
                    Button {
                        withAnimation {
                            cardAdded.toggle()
                        }
                    } label: {
                        Text("Confirm").frame(width: 300, height: 60)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }.padding(.top, 70)
                    
                    Spacer()
                }
                .navigationTitle("Add New Card")
                .navigationBarTitleDisplayMode(.inline)
            }
            
            if cardAdded {
                Color.black.opacity(0.5).ignoresSafeArea()
                VStack {
                    Circle()
                        .frame(width: 130)
                        .foregroundColor(.green.opacity(0.5))
                        .overlay(
                            Circle()
                                .frame(width: 100)
                                .foregroundColor(.green)
                        )
                        .overlay(
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .font(.title)
                        )
                        .bold()
                    
                    Text("Your card has been succesfully added")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    Button {
                        withAnimation {
                            cardAdded.toggle()
                        }
                    } label: {
                        Text("Ok")
                            .frame(width: 300, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                }
                .frame(width: 330)
                .padding(.vertical, 30)
                .padding(.horizontal)
                .background()
                .cornerRadius(20)
            }
        }
    }
}

#Preview {
    AddNewCardView()
}
