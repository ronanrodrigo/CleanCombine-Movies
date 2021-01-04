final class ListMoviesControllerFactory {
    private init() { }

    static func make(listAllinteractor: ListAllMoviesInteractor, searchInteractor: SearchMoviesInteractor) -> ListMoviesController {
        ListMoviesController(listAllinteractor: listAllinteractor, searchInteractor: searchInteractor)
    }
}
