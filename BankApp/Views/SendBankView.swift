//
//  SendBankView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 15/02/24.
//

import SwiftUI

struct SendBankView: View {
    @State private var showSheet = false
    @State var bankName = "Select Bank"
    @State private var numerCard = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("Select Bank")
                
                Button {
                    showSheet.toggle()
                } label: {
                    HStack {
                        Image(systemName: "building.columns.fill")
                        Text(bankName)
                        Spacer()
                        Image(systemName: "arrow.forward")
                    }.frame(width: 300).padding().background(.blue.opacity(0.15)).cornerRadius(20)
                }.sheet(isPresented: $showSheet) {
                    SheetView()
                }
                
                if bankName == "Select Bank" {
                    VStack(alignment: .leading) {
                        Text("Enter Account Number").bold()
                        
                        HStack {
                            Image(systemName: "person").foregroundColor(.blue)
                            TextField("Enter 10 digit number", text: $numerCard)
                        }.padding()
                            .background(.blue.opacity(0.15))
                            .cornerRadius(20)
                        
                        Divider().frame(height: 1).overlay(.gray)
                        
                        NavigationLink {
                            TransferAmountView()
                        } label: {
                            Text("Next").frame(width: 300, height: 60)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(30)
                        }.padding(.top, 20)
                        
                    }.padding(.top).frame(width: 320)
                } else {
                    HStack {
                        Text("Saved beneficiary")
                        
                        Spacer()
                        
                        Button("See all") {
                            
                        }
                    }.frame(width: 300).padding(.top, 50)
                    
                    VStack {
                        NavigationLink {
                            //
                        } label: {
                            HStack {
                                AsyncImage(url: URL(string: "https://picsum.photos/id/100/50"))
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Mogaji Olatubosun ojo").font(.callout)
                                    Text("315347852").font(.caption2).foregroundColor(.black)
                                }
                            }
                        }
                        
                        NavigationLink {
                            //
                        } label: {
                            HStack {
                                AsyncImage(url: URL(string: "https://picsum.photos/id/100/50"))
                                    .cornerRadius(10)
                                VStack(alignment: .leading) {
                                    Text("Mogaji Olatubosun ojo").font(.callout)
                                    Text("315347852").font(.caption2).foregroundColor(.black)
                                }
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Send to Bank")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SendBankView()
}
