//
//  CardsTab.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct CardsTab: View {
    @State var selection = "NGN Card"
    @State var test = ["NGN Card", "USD Card"]
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    if selection == "NGN Card" {
                        NGNCard()
                    } else {
                        USDCard()
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "exclamationmark.circle").foregroundColor(.black)
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .principal) {
                    Picker("Tip percentaje", selection: $selection) {
                        ForEach(test, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "ellipsis").foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CardsTab()
}

struct NGNCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Card(mini: false)
            }
            .frame(width: 400, height: 220)
            .shadow(radius: 10, x: 10, y: 20)
            .padding(.bottom, 40)
            
            Text("Your Saved Cards")
                .font(.title2)
                .bold()
                .padding()
            HStack {
                Card(mini: true)
                Card(mini: true)
            }.padding()
            
            NavigationLink {
                //
            } label: {
                Label("Add New Card", systemImage: "plus")
                    .frame(width: 360, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25.0).stroke()
                    )
            }.padding()
        }
    }
}

struct USDCard: View {
    var body: some View {
        VStack {
            
        }
    }
}
