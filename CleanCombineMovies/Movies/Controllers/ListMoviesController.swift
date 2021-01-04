import Combine
import Foundation

final class ListMoviesController: ObservableObject {
    private let listAllinteractor: ListAllMoviesInteractor
    private let searchInteractor: SearchMoviesInteractor
    private var cancellable: AnyCancellable?
    @Published var searchTerm: String = String()

    init(listAllinteractor: ListAllMoviesInteractor,
         searchInteractor: SearchMoviesInteractor) {
        self.listAllinteractor = listAllinteractor
        self.searchInteractor = searchInteractor
        searchSink()
    }

    func all() {
        listAllinteractor.list()
    }

    func searchSink() {
        cancellable = $searchTerm
            .receive(on: RunLoop.main)
            .sink { [weak self] (text) in
                if text.isEmpty {
                    self?.all()
                } else {
                    self?.searchInteractor.search(by: text)
                }
            }
    }
}
