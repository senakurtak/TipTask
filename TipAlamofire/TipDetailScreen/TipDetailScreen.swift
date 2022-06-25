//
//  TipDetailScreen.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 21.06.2022.
//

import SwiftUI

struct TipDetailScreen: View {
    
    var tips : Tip
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        Section {
                        } header: {
                            Text("Key Care Tips for Happy Plants")
                            //                                .sectionHeaderStyle()
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                        }
                        Section {
                            Text(tips.description)
                                .font(.system(size: 18))
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.41, green: 0.55, blue: 0.27))
                                .listRowSeparator(.hidden)
                                .background(Color.white)
                                .padding()
                        } header: {
                            Text("Prune your plants!")
                            //                                .sectionHeaderStyle()
                        }
                    }
                    //                    .navigationBarTitle(Text($TipList.name), displayMode: .inline)
                }
            }
        }
    }
}

struct TipDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipDetailScreen(tips: Tip())
    }
}
