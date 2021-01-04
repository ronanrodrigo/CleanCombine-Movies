final class SearchMoviesInteractorFactory {
    private init() { }

    static func make(presenter: ListMoviesPresenter) -> SearchMoviesInteractor {
        let gateway = MoviesGatewayFactory.make()
        return SearchMoviesInteractor(presenter: presenter, gateway: gateway)
    }
}
