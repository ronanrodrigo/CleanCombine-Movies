import Combine

final class ListAllMoviesInteractor {
    private let presenter: ListMoviesPresenter
    private let gateway: MoviesGateway
    private var cancellable: AnyCancellable?

    init(presenter: ListMoviesPresenter,
         gateway: MoviesGateway) {
        self.presenter = presenter
        self.gateway = gateway
    }

    func list() {
        cancellable = gateway.all().sink(
            receiveCompletion: { _ in },
            receiveValue: { [presenter] movies in
                presenter.update(movies: movies)
            })
    }
}
