//
//  MovieListViewModelTests.swift .swift
//  iOS-MVVM-CleanArchitecture
//
//  Created by archana racha on 02/12/25.
//

import Foundation
import XCTest

@MainActor
final class MovieListViewModelTests: XCTestCase {

    func test_fetchMovies_success() async {
        let mockService = MockAPIService()
        let viewModel = MovieListViewModel(apiService: mockService)

        await viewModel.fetchMovies()

        XCTAssertFalse(viewModel.movies.isEmpty)
        XCTAssertEqual(viewModel.movies.first?.name, "Test Movie")
        XCTAssertNil(viewModel.errorMessage)
        XCTAssertFalse(viewModel.isLoading)
    }

    func test_fetchMovies_failure() async {
        let mockService = MockAPIService()
        mockService.shouldReturnError = true
        let viewModel = MovieListViewModel(apiService: mockService)

        await viewModel.fetchMovies()

        XCTAssertTrue(viewModel.movies.isEmpty)
        XCTAssertNotNil(viewModel.errorMessage)
        XCTAssertFalse(viewModel.isLoading)
    }
}
