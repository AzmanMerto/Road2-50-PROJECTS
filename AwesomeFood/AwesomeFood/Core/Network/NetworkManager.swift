//
//  NetworkManager.swift
//  AwesomeFood
//
//  Created by NomoteteS on 5.02.2023.
//

import Foundation

struct NetworkConfig {
    let baseUrl: String
}

protocol INetworkManager {
    func fetch<T : Codable>(path: NetworkPath, type: T) -> T?
    var config: NetworkConfig { get set }
}

class NetworkManager: INetworkManager {
    internal var config: NetworkConfig

    init(config: NetworkConfig) {
        self.config = config
    }
    
    func fetch<T : Codable>(path: NetworkPath, type: T) -> T?  {
        
        return nil
    }
    
}

enum NetworkPath: String {
    case users = "api/users"
    
    static let baseUrlReqres : String = "https://reqres.in"
}
