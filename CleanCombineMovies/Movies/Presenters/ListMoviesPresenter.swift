import Combine

final class ListMoviesPresenter: ObservableObject {
    @Published var listMovieViewModel = ListMoviesViewModel(isLoading: true)

    func update(movies: [Movie]) {
        listMovieViewModel = ListMoviesViewModel(movies: movies)
    }
}
