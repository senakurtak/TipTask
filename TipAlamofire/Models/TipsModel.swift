//
//  TipsModel.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 20.06.2022.
//

import Foundation

struct Tip : Hashable , Decodable {
    
    var _id : String = ""
    var name : String = ""
    var title : String = ""
    var description : String = ""
    var img : String = ""
    var __v : Int = 0

}
