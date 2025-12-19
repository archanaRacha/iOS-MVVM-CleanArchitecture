import SwiftUI

struct MovieListView: View {
    @StateObject private var viewModel = MovieListViewModel()

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading Movies...")
                } else if let error = viewModel.errorMessage {
                    Text(error)
                        .foregroundColor(.red)
                } else {
                    List(viewModel.movies) { movie in
                        NavigationLink(destination: MovieDetailView(movie: movie)) {
                            HStack {
                                AsyncImage(url: URL(string: movie.image?.medium ?? "")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 60, height: 90)
                                .cornerRadius(8)

                                VStack(alignment: .leading) {
                                    Text(movie.name).font(.headline)
                                    Text("Rating: \(movie.rating?.average ?? 0, specifier: "%.1f")")
                                        .font(.subheadline)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Movies")
            .task {
                await viewModel.fetchMovies()
            }
        }
    }
}
