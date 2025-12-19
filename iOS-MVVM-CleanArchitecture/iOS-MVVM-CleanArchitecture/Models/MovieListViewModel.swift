//
//  MovieListViewModel.swift
//  iOS-MVVM-CleanArchitecture
//
//  Created by archana racha on 02/12/25.
//


import Foundation

@MainActor
class MovieListViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    private let apiService: APIServiceProtocol

    init(apiService: APIServiceProtocol = APIService()) {
        self.apiService = apiService
    }

    func fetchMovies() async {
        isLoading = true
        errorMessage = nil

        do {
            let response = try await apiService.fetchMovies()
            self.movies = response
        } catch {
            self.errorMessage = "Failed to load movies"
        }

        isLoading = false
    }
}
