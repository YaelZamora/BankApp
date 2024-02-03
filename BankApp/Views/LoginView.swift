//
//  LoginView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var secure = true
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("logform")
                    .resizable()
                    .frame(width: 150, height: 150)
                VStack(alignment: .leading) {
                    Label {
                        Text("Enter email")
                            .font(.title2)
                    } icon: {
                        Image(systemName: "envelope")
                            .font(.title2)
                            .padding(.leading)
                            .foregroundColor(.blue)
                    }
                    TextField("", text: $email)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1)
                        )
                        .padding(.horizontal)
                }
                VStack(alignment: .leading) {
                    Label {
                        Text("Password")
                            .font(.title2)
                    } icon: {
                        Image(systemName: "lock")
                            .font(.title2)
                            .padding(.leading)
                            .foregroundColor(.blue)
                    }
                    HStack {
                        if secure {
                            SecureField("", text: $password)
                                .padding()
                        } else {
                            TextField("", text: $password)
                                .padding()
                        }
                        Button {
                            secure.toggle()
                        } label: {
                            Image(systemName: (secure) ? "eye.slash" : "eye")
                        }
                        .padding(.trailing)
                        .foregroundColor(.black)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1)
                    )
                    .padding(.horizontal)
                    NavigationLink {
                        //
                    } label: {
                        Text("Forgot password?")
                    }
                    .padding(.leading)
                    .foregroundColor(.black)
                }
                .padding(.top, 20)
                
                NavigationLink {
                    HomeView()
                } label: {
                    Text("LOGIN")
                        .frame(width: 350, height: 50)
                        .background(.blue)
                        .cornerRadius(25)
                        .foregroundColor(.white)
                }.padding(.top, 100)
                
                NavigationLink {
                    //
                } label: {
                    Text("Create account").foregroundColor(.black)
                }
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    LoginView()
}
