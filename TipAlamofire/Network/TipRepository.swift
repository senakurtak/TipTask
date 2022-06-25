//
//  TipRepository.swift
//  TipAlamofire
//
//  Created by Sena Kurtak on 20.06.2022.
//

import Foundation
import Alamofire

class TipRepository {
    
    func getAllTips(completion:@escaping ([TipModel]) -> Void){
        
        let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips")
        
        request.responseDecodable(of: [TipModel].self){ response in
            
            completion(response.value!)
            
        }
    }
    
    func getTipsById(id: Int, completion: @escaping (TipModel) -> Void){

        let request = AF.request("https://plankton-app-jr8ee.ondigitalocean.app/api/tips")

        request.responseDecodable(of: TipModel.self){ response in

            completion(response.value!)

        }

    }
    
    
}
