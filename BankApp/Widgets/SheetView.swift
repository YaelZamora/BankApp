//
//  SheetView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 15/02/24.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    @State private var search = ""
    var name = SendBankView()
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search here for bank", text: $search)
                }.padding()
                    .background(.blue.opacity(0.2))
                    .cornerRadius(20)
                    .padding(.horizontal)
                
                VStack(alignment: .leading) {
                    Text("Frecuency Used Bank")
                    
                    Spacer()
                    
                    HStack(spacing: 50) {
                        VStack {
                            AsyncImage(url: URL(string: "https://picsum.photos/40"))
                            Text("Associated\nBank").bold()
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                        }
                        
                        VStack {
                            AsyncImage(url: URL(string: "https://picsum.photos/40"))
                            Text("American\nBank")
                                .bold()
                                .multilineTextAlignment(.center)
                                .font(.caption)
                        }
                        
                        VStack {
                            AsyncImage(url: URL(string: "https://picsum.photos/40"))
                            Text("International\nBank")
                                .bold()
                                .multilineTextAlignment(.center)
                                .font(.caption2)
                        }
                    }
                    
                    Spacer()
                }.frame(width: 300, height: 170)
                    .padding()
                    .background(.blue.opacity(0.2))
                    .cornerRadius(20)
                ScrollView(showsIndicators: false) {
                    ForEach (0..<20) { _ in
                        Button {
                            name.bankName = "Lalala"
                            dismiss()
                        } label: {
                            HStack {
                                AsyncImage(url: URL(string: "https://picsum.photos/40"))
                                Text("International Bank").font(.headline)
                                Spacer()
                            }.frame(width: 300).padding(.vertical).foregroundColor(.black)
                        }
                    }
                }
            }.navigationTitle("Select Bank")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SheetView()
}
