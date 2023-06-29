//
//  APIError.swift
//  MVVM-Coordinator
//
//  Created by User-K02 on 6/29/23.
//

import Foundation

enum APIError: Error {
    case genericError(Error)
    case invalidURL
    case noData
    case decodingError
}
