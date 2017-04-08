//
//  GetRepositoriesRequest.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct GetRepositoriesRequest: GithubRequestType {
    
    typealias Response = [Repository]
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/users/\(self.userName)/repos"
    }
    
    let userName: String
    
    init(userName: String) {
        self.userName = userName
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [Repository] {
        return try decodeArray(object)
    }
}
