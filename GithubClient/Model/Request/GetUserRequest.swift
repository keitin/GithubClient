//
//  SearchUserRequest.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/07.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

struct GetUserRequest: GithubRequestType {
    
    typealias Response = User
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/users/\(self.userName)"
    }
    
    let userName: String
    
    init(userName: String) {
        self.userName = userName
    }
}
