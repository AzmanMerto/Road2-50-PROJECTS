//
//  NetworkManager.swift
//  AwesomeFood
//
//  Created by NomoteteS on 5.02.2023.
//

import Alamofire

struct NetworkConfig {
    let baseUrl: String
}

protocol INetworkManager {
    func fetch<T : Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async   -> T?
    var config: NetworkConfig { get set }
}

class NetworkManager: INetworkManager {
    internal var config: NetworkConfig

    init(config: NetworkConfig) {
        self.config = config
    }
    
    func fetch<T : Codable>(path: NetworkPath, method: HTTPMethod, type: T.Type) async -> T?  {
        let dataRequest = AF.request("", method: method).validate().serializingDecodable(T.self)
        
        let result = await dataRequest.response
     
        return result.value
    }
    
}

enum NetworkPath: String {
    case users = "api/users"
    
    static let baseUrlReqres : String = "https://reqres.in"
}
