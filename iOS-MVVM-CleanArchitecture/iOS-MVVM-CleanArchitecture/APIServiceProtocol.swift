import Foundation

protocol APIServiceProtocol {
    func fetchMovies() async throws -> [Movie]
}

class APIService: APIServiceProtocol {
    func fetchMovies() async throws -> [Movie] {
        guard let url = URL(string: "https://api.tvmaze.com/shows") else {
            throw URLError(.badURL)
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Movie].self, from: data)
    }
}
