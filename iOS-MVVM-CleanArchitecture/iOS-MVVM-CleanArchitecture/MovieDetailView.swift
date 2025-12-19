import SwiftUI

struct MovieDetailView: View {
    let movie: Movie

    var body: some View {
        VStack(spacing: 16) {
            AsyncImage(url: URL(string: movie.image?.original ?? "")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 300)
            .cornerRadius(12)

            Text(movie.name)
                .font(.largeTitle)
                .bold()

            if let rating = movie.rating?.average {
                Text("Rating: \(rating, specifier: "%.1f")")
                    .font(.title2)
            }

            Spacer()
        }
        .padding()
        .navigationTitle(movie.name)
    }
}
