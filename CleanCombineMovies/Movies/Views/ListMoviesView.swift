import SwiftUI

struct ListMoviesView: View {
    @StateObject private var controller: ListMoviesController
    @StateObject private var presenter: ListMoviesPresenter

    init(controller: ListMoviesController,
         presenter: ListMoviesPresenter) {
        self._controller = .init(wrappedValue: controller)
        self._presenter = .init(wrappedValue: presenter)
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search...", text: $controller.searchTerm)
                            .foregroundColor(.primary)
                    }
                    .padding(EdgeInsets(top: 8, leading: 6, bottom: 8, trailing: 6))
                    .foregroundColor(.secondary)
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(10.0)
                }
                .padding(.horizontal)

                List(presenter.listMovieViewModel.movies) {
                    Text($0.title)
                }
                .navigationBarTitle(Text("Search"))
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
