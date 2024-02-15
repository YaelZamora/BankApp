//
//  HomeTab.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct HomeTab: View {
    @State private var visible = true
    
    let iconos = [
        "arrow.left.arrow.right",
        "phone.connection",
        "dot.radiowaves.left.and.right",
        "menucard",
        "arrow.right"
    ]
    
    let info = ["Transfer", "Calltime", "Data", "Bills", "More"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    ZStack {
                        VStack(alignment: .leading) {
                            Text("Current balance")
                            Text((visible) ? "MXN10,000.00" : "MXN***").font(.title2).bold()
                        }
                        .foregroundColor(.white)
                        .position(x: 100, y: 100)
                        
                        Text("Account number: 315347852")
                            .foregroundColor(.white)
                            .position(x: 130, y: 180)
                        
                        Button {
                            visible.toggle()
                        } label: {
                            Image(systemName: (visible) ? "eye" : "eye.slash")
                        }
                        .foregroundColor(.white)
                        .font(.title2)
                        .position(x: 300, y: 100)
                    }
                    .frame(width: 350, height: 200)
                    .background(.blue)
                    .cornerRadius(20)
                    .padding(.top, 30)
                    
                    HStack {
                        ForEach(0..<iconos.count) { item in
                            VStack {
                                NavigationLink {
                                    //
                                } label: {
                                    Image(systemName: iconos[item])
                                }
                                .frame(width: 30, height: 30)
                                .padding()
                                .background(.thickMaterial)
                                .cornerRadius(30)
                                
                                Text(info[item]).font(.caption)
                            }
                        }
                    }
                    .padding(.vertical)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Others").font(.largeTitle).bold()
                        
                        HStack {
                            Image(systemName: "arrow.circlepath")
                                .foregroundColor(.white)
                                .padding(.leading)
                            VStack(alignment: .leading) {
                                Text("Transaction Hostory")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.white)
                                Text("Save your recents transactions")
                                    .font(.caption)
                            }
                            Spacer()
                        }
                        .frame(width: 350, height: 60)
                        .background(.blue)
                        .cornerRadius(20)
                        
                        HStack {
                            Image(systemName: "arrow.circlepath")
                                .foregroundColor(.white)
                                .padding(.leading)
                            VStack(alignment: .leading) {
                                Text("Transaction Hostory")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.white)
                                Text("Save your recents transactions")
                                    .font(.caption)
                            }
                            Spacer()
                        }
                        .frame(width: 350, height: 60)
                        .background(.blue)
                        .cornerRadius(20)
                        
                        HStack {
                            Image(systemName: "arrow.circlepath")
                                .foregroundColor(.white)
                                .padding(.leading)
                            VStack(alignment: .leading) {
                                Text("Transaction Hostory")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.white)
                                Text("Save your recents transactions")
                                    .font(.caption)
                            }
                            Spacer()
                        }
                        .frame(width: 350, height: 60)
                        .background(.blue)
                        .cornerRadius(20)
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Text("Hi, Yael Zamora").font(.title).bold()
                    }
                }
                .toolbar {
                    Button {
                        //
                    } label: {
                        AsyncImage(url: URL(string: "https://picsum.photos/id/50/50"))
                            .cornerRadius(25)
                    }
                    Button {
                        //
                    } label: {
                        Image(systemName: "bell").foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeTab()
}
