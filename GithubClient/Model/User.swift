//
//  User.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import Himotoki

struct User: Decodable {
    var userName: String
    var name: String
    var bio: String
    var avatarURL: String
    
    static func decode(_ e: Extractor) throws -> User {
        return try User(
            userName: e <| ["login"],
            name: e <| ["name"],
            bio: e <| ["bio"],
            avatarURL: e <| ["avatar_url"])
    }
    
}

final class CurrentUser {
    
    private init() {}
    
    static let sharedInstance = CurrentUser()
    
    var user: User?
}
