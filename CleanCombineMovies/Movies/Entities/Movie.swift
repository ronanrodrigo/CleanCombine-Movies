import Foundation

struct Movie: Identifiable {
    var id: String
    var title: String

    init(_ title: String) {
        self.id = UUID().uuidString
        self.title = title
    }
}
