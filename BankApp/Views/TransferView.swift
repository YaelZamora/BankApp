//
//  TransferView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 15/02/24.
//

import SwiftUI

struct TransferView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Card(mini: false)
                VStack(alignment: .leading) {
                    Text("Chose a way to transfer money")
                    
                    NavigationLink {
                        //
                    } label: {
                        HStack {
                            Image(systemName: "arrow.counterclockwise")
                            VStack(alignment: .leading) {
                                Text("Send to Go Bank").font(.callout)
                                Text("Send money to GBG account").font(.caption2).foregroundColor(.black)
                            }
                            Spacer()
                        }
                    }
                    .frame(width: 300)
                    .padding()
                    .background(.blue.opacity(0.15))
                    .cornerRadius(20)
                    
                    NavigationLink {
                        //
                    } label: {
                        HStack {
                            Image(systemName: "arrow.clockwise")
                            VStack(alignment: .leading) {
                                Text("Send to other bank").font(.callout)
                                Text("Send money to 10 000 banks")
                                    .font(.caption2)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                        }
                    }
                    .frame(width: 300)
                    .padding()
                    .background(.blue.opacity(0.15))
                    .cornerRadius(20)
                }.padding(.top, 30)
                    .frame(width: 350)
                Spacer()
            }.navigationTitle("Transfer")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TransferView()
}
