//
//  LBCService.swift
//  hackaton-leboncoin
//
//  Created by Antoine BOISADAM on 25/05/2018.
//  Copyright © 2018 Antoine BOISADAM. All rights reserved.
//

import Moya

enum LBCService {
    case search(filters: [String: Any]?, limit: Int?, sort_by: String?, sort_order: String?, owner_type: String?)
}

extension LBCService: TargetType {
    var baseURL: URL { return URL(string: "https://vivatech.leboncoin.io")! }
    var path: String {
        switch self {
        case .search: return "/search"
        }
    }
    var method: Moya.Method {
        switch self {
        case .search: return .post
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        case .search(let filters, let limit, let sort_by, let sort_order, let owner_type):
            var res: [String: Any] = [:]
            if let filtersUnwrapped = filters {
                res["filters"] = filtersUnwrapped
            }
            if let limitUnwrapped = limit {
                res["limit"] = limitUnwrapped
            } else {
                res["limit"] = 35
            }
            if let sortByUnwrapped = sort_by {
                res["sort_by"] = sortByUnwrapped
            }
            if let sortOrderUnwrapped = sort_order {
                res["sort_order"] = sortOrderUnwrapped
            }
            if let ownerTypeUnwrapped = owner_type {
                res["owner_type"] = ownerTypeUnwrapped
            }
            return res
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        switch self {
        case .search:
            // Send parameters as JSON in request body
            return JSONEncoding.default
        }
    }
    
    var task: Task {
        switch self {
        case .search: // Always send parameters as JSON in request body
            return .requestPlain
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    /// Declares whether or not `AccessTokenPlugin` should add an authorization header
    /// to requests.
    var shouldAuthorize: Bool {
        switch self {
        case .search: return false
        }
    }
    
    var headers: [String: String]? {
        return ["Content-type": "application/json",
                "api_key": "team10-fe2bc"]
    }
}
