struct ListMoviesViewModel {
    let movies: [Movie]
    let isLoading: Bool

    init(isLoading: Bool) {
        self.isLoading = isLoading
        self.movies = []
    }

    init(movies: [Movie]) {
        self.movies = movies
        self.isLoading = false
    }
}
