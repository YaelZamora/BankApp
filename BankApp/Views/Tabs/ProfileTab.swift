//
//  ProfileTab.swift
//  BankApp
//
//  Created by Yael Javier Zamora Moreno on 23/01/24.
//

import SwiftUI

struct ProfileTab: View {
    let icons = ["printer", "paperplane", "person", "gearshape", "questionmark"]
    let titles = ["Account Statement", "Transfer Limits", "Bank Card/Account", "Settings", "Support"]
    let subtitles = ["Check account statements", "Check money transfer limits", "See and link bank car/accounts", "Control your notification and security settings", "Control your notification and security settings"]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                        
                        VStack {
                            AsyncImage(url: URL(string: "https://picsum.photos/id/90/200"))
                                .cornerRadius(100)
                            Text("Yael Zamora")
                                .bold()
                                .font(.largeTitle)
                            ButtonAccount(icon: "person", title: "My Profile", subtitle: "See and edit your profile details")
                        }
                        
                        Spacer()
                    }
                    
                    Text("Settings & Preferences").font(.title2).bold().padding()
                    
                    ForEach(0..<icons.count) { item in
                        ButtonAccount(icon: icons[item], title: titles[item], subtitle: subtitles[item])
                    }.padding(.leading, 30)
                    
                    NavigationLink {
                        //
                    } label: {
                        HStack {
                            Spacer()
                            Text("Sign out").foregroundColor(.red)
                            Spacer()
                        }
                    }.padding()
                }
                .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ProfileTab()
}
