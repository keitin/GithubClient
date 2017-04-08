//
//  Repository.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import Himotoki

struct Repository: Decodable {
    var name: String
    var user: User?
    
    static func decode(_ e: Extractor) throws -> Repository {
        return try Repository(name: e <| ["name"], user: nil)
    }
}
