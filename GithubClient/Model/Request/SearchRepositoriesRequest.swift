//
//  SearchRepositoriesRequest.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/08.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct SearchRepositoriesRequest: GithubRequestType {
    
    typealias Response = [Repository]
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/search/repositories"
    }
    
    var queryParameters: [String : Any]? {
        return ["q": self.q]
    }
    
    let q: String
    
    init(q: String) {
        self.q = q
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [Repository] {
        return try decodeArray(object, rootKeyPath: "items")
    }
    
}
