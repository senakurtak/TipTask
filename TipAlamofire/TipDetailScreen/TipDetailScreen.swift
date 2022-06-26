//
//  TipDetailScreen.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 21.06.2022.
//

import SwiftUI
import Alamofire

struct TipDetailScreen: View {
    
    var _id : String
    @State var tips : TipModel = TipModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Form {
                        Section {
                        } header: {
                            Text(tips.name)
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
                    .navigationBarTitle(Text(tips.name), displayMode: .inline)
                }
            }
        }
        .onAppear(){
            print("ID", _id)
            let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips/\(_id)")
            request.responseDecodable(of: TipModel.self){response in
                tips = response.value ?? TipModel()
             
//
                
                //            let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips/\(_id)")
                //            request.responseDecodable(of: TipModel.self){response in
                //                tips = response.value ?? TipModel()
            }
        }
    }
    
}

