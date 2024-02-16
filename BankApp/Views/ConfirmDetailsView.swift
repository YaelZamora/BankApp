//
//  ConfirmDetailsView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 16/02/24.
//

import SwiftUI

struct ConfirmDetailsView: View {
    let data = ["Bank", "Account Number", "Name", "Amount", "Transaction Fee"]
    let moreData = ["International Bank", "315347852", "Yael Zamora", "10,000.00", "10.00"]
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Select Bank").bold()
                
                HStack {
                    AsyncImage(url: URL(string: "https://picsum.photos/30"))
                    VStack(alignment: .leading) {
                        Text("International Bank").font(.callout)
                        Text("315347852").font(.caption)
                    }
                    Spacer()
                }.padding().background(.blue.opacity(0.15)).cornerRadius(20)
                
                Spacer()
                
                VStack {
                    HStack {
                        NavigationLink {
                            //
                        } label: {
                            Image(systemName: "xmark").bold()
                        }.foregroundColor(.black.opacity(0.5))
                        
                        Spacer()
                    }
                    
                    Text("10,010.00").font(.largeTitle).bold()
                    
                    ForEach(0..<data.count) { item in
                        HStack {
                            Text(data[item]).font(.callout).foregroundColor(.gray)
                            Spacer()
                            Text(moreData[item]).font(.callout).bold()
                        }.padding(.vertical, 10)
                    }
                    
                    Label {
                        Text("Balance(N155,00.24)")
                    } icon: {
                        Image(systemName: "creditcard").font(.title3)
                            .bold()
                            .foregroundColor(.blue)
                    }.frame(width: 320)
                        .padding()
                        .background(.blue.opacity(0.15))
                        .cornerRadius(10)
                        .padding(.bottom)
                    
                    NavigationLink {
                        CodeView()
                    } label: {
                        Text("Pay").frame(width: 320)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(30)
                    }
                }
                .padding(.top, 30)
                .background(.gray.opacity(0.2))
                .cornerRadius(20, corners: .topLeft)
                .cornerRadius(20, corners: .topRight)
            }
            .navigationTitle("Confirm Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ConfirmDetailsView()
}
