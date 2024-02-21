//
//  ButtonAccount.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 21/02/24.
//

import SwiftUI

struct ButtonAccount: View {
    @State var icon = ""
    @State var title = ""
    @State var subtitle = ""
    
    var body: some View {
        NavigationLink {
            //
        } label: {
            HStack {
                Image(systemName: icon)
                VStack(alignment: .leading) {
                    Text(title).font(.callout)
                    Text(subtitle)
                        .font(.caption2)
                        .foregroundColor(.black)
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            .frame(width: 300)
            .padding()
            .background(.blue.opacity(0.05))
            .cornerRadius(30)
        }
    }
}

#Preview {
    ButtonAccount()
}
