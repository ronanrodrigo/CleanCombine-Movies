final class ListAllMoviesInteractorFactory {
    private init() { }

    static func make(presenter: ListMoviesPresenter) -> ListAllMoviesInteractor {
        let gateway = MoviesGatewayFactory.make()
        return ListAllMoviesInteractor(presenter: presenter, gateway: gateway)
    }
}
