//
//  TipScreen.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 20.06.2022.
//

import SwiftUI

struct TipScreen: View {
    
    @State var TipList : [Tip] = []
    
    var body: some View {
        VStack{
            ForEach(TipList, id:\.self){item in Text(item.name)
            }
        }.onAppear(){
            
            var tipRepository = TipRepository()
            
            tipRepository.getAllTips(){ item in
                TipList = item
            }
            
        }
    }
}

struct TipScreen_Previews: PreviewProvider {
    static var previews: some View {
        TipScreen()
    }
}
