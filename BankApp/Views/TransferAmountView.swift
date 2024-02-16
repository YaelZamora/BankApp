//
//  TransferAmountView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 16/02/24.
//

import SwiftUI

struct TransferAmountView: View {
    @State private var amount = ""
    @State private var remark = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Select Bank").bold()
                
                HStack {
                    AsyncImage(url: URL(string: "https://picsum.photos/30"))
                    VStack(alignment: .leading) {
                        Text("International Bank").font(.callout)
                        Text("315347852").font(.caption)
                    }
                    Spacer()
                }.padding().background(.blue.opacity(0.15)).cornerRadius(20)
                
                Text("Enter Amount").bold()
                
                TextField("Enter Amout", text: $amount)
                    .padding()
                    .background(.blue.opacity(0.15))
                    .cornerRadius(15)
                
                Divider()
                    .frame(height: 1)
                    .overlay(.black)
                    .padding(.bottom, 40)
                
                Text("Remark(Optional)").bold()
                
                TextField("Transaction remarks(Optional)", text: $remark)
                    .padding()
                    .background(.blue.opacity(0.15))
                    .cornerRadius(15)
                
                Divider().frame(height: 1).overlay(.black).padding(.bottom, 60)
                
                NavigationLink {
                    ConfirmDetailsView()
                } label: {
                    Text("Next")
                        .frame(width: 330)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Transfer Amount")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TransferAmountView()
}
