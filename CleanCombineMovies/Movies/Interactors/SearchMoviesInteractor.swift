import Combine

final class SearchMoviesInteractor {
    private let presenter: ListMoviesPresenter
    private let gateway: MoviesGateway
    private var cancellable: AnyCancellable?

    init(presenter: ListMoviesPresenter,
         gateway: MoviesGateway) {
        self.presenter = presenter
        self.gateway = gateway
    }

    func search(by term: String) {
        cancellable = gateway.all()
            .map { (movies) -> [Movie] in
                movies.filter { $0.title.lowercased().contains(term.lowercased()) }
            }
            .sink(
                receiveCompletion: { _ in },
                receiveValue: { [presenter] movies in
                    presenter.update(movies: movies)
                })
    }
}
