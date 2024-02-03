//
//  SignUpView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var secure = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                VStack(alignment: .leading) {
                    Label {
                        Text("Full name")
                            .font(.title2)
                    } icon: {
                        Image(systemName: "person")
                            .font(.title2)
                            .padding(.leading)
                            .foregroundColor(.blue)
                    }
                    TextField("Full name", text: $fullName)
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1)
                        )
                        .padding(.horizontal)
                }
                
                VStack(alignment: .leading) {
                    Label {
                        Text("Email")
                            .font(.title2)
                    } icon: {
                        Image(systemName: "envelope")
                            .font(.title2)
                            .padding(.leading)
                            .foregroundColor(.blue)
                    }
                    TextField("Email", text: $email)
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
                            SecureField("Password", text: $password)
                                .padding()
                        } else {
                            TextField("Password", text: $password)
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
                }
                
                VStack(alignment: .leading) {
                    Label {
                        Text("Confirm password")
                            .font(.title2)
                    } icon: {
                        Image(systemName: "lock")
                            .font(.title2)
                            .padding(.leading)
                            .foregroundColor(.blue)
                    }
                    HStack {
                        if secure {
                            SecureField("Confirm password", text: $confirmPassword)
                                .padding()
                        } else {
                            TextField("Confirm password", text: $confirmPassword)
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
                }
                
                if password.isEmpty || confirmPassword.isEmpty {
                    //
                } else {
                    if password == confirmPassword {
                        NavigationLink {
                            HomeView()
                        } label: {
                            Text("Sign up")
                                .frame(width: 350, height: 50)
                                .background(.blue)
                                .cornerRadius(25)
                                .foregroundColor(.white)
                        }
                    }
                }
                
                HStack {
                    Text("Have an account?")
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Sign in")
                    }
                }
            }
            .navigationTitle("Sign up")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    SignUpView()
}
