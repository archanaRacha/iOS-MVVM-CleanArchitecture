//
//  MockAPIService.swift
//  iOS-MVVM-CleanArchitecture
//
//  Created by archana racha on 02/12/25.
//


import Foundation
//@testable import MovieBrowser


class MockAPIService: APIServiceProtocol {
    var shouldReturnError = false

    func fetchMovies() async throws -> [Movie] {
        if shouldReturnError {
            throw URLError(.badServerResponse)
        }

        return [
            Movie(id: 1, name: "Test Movie", rating: Rating(average: 8.0), image: nil)
        ]
    }
}
