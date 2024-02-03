//
//  Card.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 28/01/24.
//

import SwiftUI

struct Card: View {
    @State var mini = true
    var body: some View {
        ZStack {
            Color.blue
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "apple.logo").font((mini) ? .caption2 : .largeTitle)
                    Spacer()
                    Text("02/25")
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                        .font((mini) ? .caption2 : .callout)
                }.padding()
                HStack {
                    Text("1092 8738 8372 7685").font((mini) ? .caption : .title2).bold().foregroundColor(.white)
                    Spacer()
                    if mini {
                        //
                    } else {
                        Button {
                            //
                        } label: {
                            Image(systemName: "square.on.square").foregroundColor(.white)
                        }
                    }
                }.padding(.horizontal).padding(.top)
                Text("Yael J. Zamora").font((mini) ? .caption2 : .callout).foregroundColor(.white).padding(.leading)
            }
        }
        .frame(width: (mini) ? 180 : 350, height: (mini) ? 120 : 220)
        .cornerRadius((mini) ? 20 : 30)
    }
}

#Preview {
    Card()
}
