//
//  GithubRequestType.swift
//  GithubClient
//
//  Created by 松下慶大 on 2017/04/07.
//  Copyright © 2017年 matsushita keita. All rights reserved.
//

import Foundation
import APIKit
import Himotoki

protocol GithubRequestType: Request {}

extension GithubRequestType {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}

extension GithubRequestType where Response: Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
