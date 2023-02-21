//
//  UserResponse.swift
//  AwesomeFood
//
//  Created by NomoteteS on 21.02.2023.
//

import Foundation

struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int?
    let data: [Datum]?
    let support: Support
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}

struct Datum: Codable {
    let id: Int?
    let email, firstName, lastName: String?
    let avatar: String?
    
    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "fisrt_name"
        case lastName = "last_name"
        case avatar
    }
}


struct Support: Codable {
    let url: String?
    let text: String?
}
