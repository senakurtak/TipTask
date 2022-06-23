//
//  HomeScreenTip.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 21.06.2022.
//

import SwiftUI

struct HomeScreenTip: View {
    
    @State var TipList : [Tip] = []
    @State var istapped : Bool = false
    
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    ForEach(TipList, id:\.self){item in
                        
                        Button(action: {
                            istapped = true
                            
                        }, label: {
                            VStack {
                                ZStack {
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color(
                                            red: 104/255,
                                            green: 141/255,
                                            blue: 70/255,
                                            opacity: 1.0))
                                        .frame(width: 60, height: 60)
                                    
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.white)
                                        .frame(width: 55, height: 55)
                                        .shadow(color: Color(
                                            red: 104/255,
                                            green: 141/255,
                                            blue: 70/255,
                                            opacity: 1.0), radius: 5, x: 2, y: 2)
                                    
                                    Image(item.img)
                                        .resizable()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .cornerRadius(20)
                                    
                                }
                                Text("\(item.name)")
                                    .foregroundColor(.green)
                                
                            }
                        })
                        
                    }
                }
                NavigationLink("", destination:TipDetailScreen(), isActive:self.$istapped)
            }
            
        }.onAppear(){
            
            let tipRepository = TipRepository()
            
            tipRepository.getAllTips(){ data in
                TipList = data
            }
            
        }
    }
    struct HomeScreenTip_Previews: PreviewProvider {
        static var previews: some View {
            HomeScreenTip()
        }
    }
}
