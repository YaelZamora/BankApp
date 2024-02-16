//
//  CodeView.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 16/02/24.
//

import SwiftUI

struct CodeView: View {
    @State private var code = [""]
    @State private var code1 = false
    @State private var code2 =  false
    @State private var code3 = false
    @State private var code4 = false
    
    @State private var sheetShow = false
    
    let columns = [GridItem(.adaptive(minimum: 100, maximum: 100))]
    let numeros = (1...9).map { "\($0)" }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Group {
                    Text("Enter your code").bold().padding(.vertical, 40)
                    
                    HStack(spacing: 60) {
                        Circle()
                            .frame(width: 20)
                            .foregroundColor((code1) ? .blue : .blue.opacity(0.15))
                        Circle()
                            .frame(width: 20)
                            .foregroundColor((code2) ? .blue : .blue.opacity(0.15))
                        Circle()
                            .frame(width: 20)
                            .foregroundColor((code3) ? .blue : .blue.opacity(0.15))
                        Circle()
                            .frame(width: 20)
                            .foregroundColor((code4) ? .blue : .blue.opacity(0.15))
                    }
                }.padding(.leading, 70)
                
                Spacer()
                
                LazyVGrid(columns: columns) {
                    ForEach(numeros, id: \.self) { item in
                        Button {
                            if !code1 {
                                code1.toggle()
                            } else if !code2 {
                                code2.toggle()
                            } else if !code3 {
                                code3.toggle()
                            } else if !code4 {
                                code4.toggle()
                                sheetShow.toggle()
                            }
                        } label: {
                            Text(item).font(.largeTitle).bold().foregroundColor(.black)
                        }.frame(width: 100, height: 100)
                    }.frame(width: 300)
                }
                
                HStack {
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("0").font(.largeTitle).bold().foregroundColor(.black)
                    }.frame(width: 100, height: 100)
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "delete.left")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.black)
                    }.frame(width: 100, height: 100)
                }.frame(width: 350).padding(.bottom, 40)
            }
            .sheet(isPresented: $sheetShow) {
                VStack {
                    Circle()
                        .frame(width: 150)
                        .foregroundColor(.green.opacity(0.6))
                        .overlay(
                            Circle()
                                .frame(width: 100)
                                .foregroundColor(.green)
                                .overlay(
                                    Image(systemName: "checkmark")
                                        .foregroundColor(.white)
                                        .font(.largeTitle).bold()
                                )
                        )
                        .padding(.top, 60)
                    
                    Text("N10,000.00").font(.largeTitle).bold()
                    
                    Text("Payment Successful")
                        .bold()
                        .foregroundColor(.green)
                        .padding(.vertical)
                    
                    Text("Transaction Number: __#315347852__").foregroundColor(.gray)
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Text("Done")
                            .frame(width: 300)
                            .foregroundColor(.black)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 25.0).stroke()
                            )
                    }
                    
                    Button {
                        //
                    } label: {
                        Text("Download Receipt")
                            .frame(width: 300)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(25)
                    }
                }
            }
        }
    }
}

#Preview {
    CodeView()
}
