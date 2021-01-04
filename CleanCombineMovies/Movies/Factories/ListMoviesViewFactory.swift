final class ListMoviesViewFactory {
    private init() { }

    static func make() -> ListMoviesView {
        let presenter = ListMoviesPresenterFactory.make()
        let listAllinteractor = ListAllMoviesInteractorFactory.make(presenter: presenter)
        let searchInteractor = SearchMoviesInteractorFactory.make(presenter: presenter)
        let controller = ListMoviesControllerFactory.make(listAllinteractor: listAllinteractor, searchInteractor: searchInteractor)
        return ListMoviesView(controller: controller, presenter: presenter)
    }
}
