import Foundation

struct Movie: Identifiable, Decodable {
    let id: Int
    let name: String
    let rating: Rating?
    let image: MovieImage?
}

struct Rating: Decodable {
    let average: Double?
}

struct MovieImage: Decodable {
    let medium: String?
    let original: String?
}
