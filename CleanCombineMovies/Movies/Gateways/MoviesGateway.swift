import Combine
import Foundation

final class MoviesGateway {
    enum Exception: Error { }
    private static let movies: [Movie] = allMovies

    func all() -> AnyPublisher<[Movie], Exception> {
        Deferred {
            Future<[Movie], Exception> {  promise in
                promise(.success(MoviesGateway.movies))
            }
        }
        .eraseToAnyPublisher()
    }
}

fileprivate let allMovies: [Movie] = [
    .init("Inglorious bastards"),
    .init("Titanic"),
    .init("Beetlejuice"),
    .init("The Cotton Club"),
    .init("The Shawshank Redemption"),
    .init("Crocodile Dundee"),
    .init("Valkyrie"),
    .init("Ratatouille"),
    .init("City of God"),
    .init("Memento"),
    .init("The Intouchables"),
    .init("Stardust"),
    .init("Apocalypto"),
    .init("Taxi Driver"),
    .init("No Country for Old Men"),
    .init("Planet 51"),
    .init("Looper"),
    .init("Corpse Bride"),
    .init("The Third Man"),
    .init("The Beach"),
    .init("Scarface"),
    .init("Sid and Nancy"),
    .init("Black Swan"),
    .init("Inception"),
    .init("The Deer Hunter"),
    .init("Chasing Amy"),
    .init("Django Unchained"),
    .init("The Silence of the Lambs"),
    .init("American Beauty"),
    .init("Snatch"),
    .init("Midnight Express"),
    .init("Pulp Fiction"),
    .init("Lock, Stock and Two Smoking Barrels"),
    .init("Lucky Number Slevin"),
    .init("Rear Window"),
    .init("Pan's Labyrinth"),
    .init("Shutter Island"),
    .init("Reservoir Dogs"),
    .init("The Shining"),
    .init("Midnight in Paris"),
    .init("Les Misérables"),
    .init("L.A. Confidential"),
    .init("Moneyball"),
    .init("The Hangover"),
    .init("The Great Beauty"),
    .init("Gran Torino"),
    .init("Mary and Max"),
    .init("Flight"),
    .init("One Flew Over the Cuckoo's Nest"),
    .init("Requiem for a Dream"),
    .init("The Truman Show"),
    .init("The Artist"),
    .init("Forrest Gump"),
    .init("The Hobbit: The Desolation of Smaug"),
    .init("Vicky Cristina Barcelona"),
    .init("Slumdog Millionaire"),
    .init("Lost in Translation"),
    .init("Match Point"),
    .init("Psycho"),
    .init("North by Northwest"),
    .init("Madagascar: Escape 2 Africa"),
    .init("Despicable Me 2"),
    .init("Downfall"),
    .init("Madagascar"),
    .init("Madagascar 3: Europe's Most Wanted"),
    .init("God Bless America"),
    .init("The Social Network"),
    .init("The Pianist"),
    .init("Alive"),
    .init("Casablanca"),
    .init("American Gangster"),
    .init("Catch Me If You Can"),
    .init("American History X"),
    .init("Casino"),
    .init("Pirates of the Caribbean: At World's End"),
    .init("Pirates of the Caribbean: On Stranger Tides"),
    .init("Crash"),
    .init("Pirates of the Caribbean: The Curse of the Black Pearl"),
    .init("The Lord of the Rings: The Return of the King"),
    .init("Oldboy"),
    .init("Chocolat"),
    .init("Casino Royale"),
    .init("WALL·E"),
    .init("The Wolf of Wall Street"),
    .init("Hellboy II: The Golden Army"),
    .init("Sunset Boulevard"),
    .init("I-See-You.Com"),
    .init("The Grand Budapest Hotel"),
    .init("The Hitchhiker's Guide to the Galaxy"),
    .init("Once Upon a Time in America"),
    .init("Oblivion"),
    .init("V for Vendetta"),
    .init("Gattaca"),
    .init("Silver Linings Playbook"),
    .init("Alice in Wonderland"),
    .init("Gandhi"),
    .init("Pacific Rim"),
    .init("Kiss Kiss Bang Bang"),
    .init("The Quiet American"),
    .init("Cloud Atlas"),
    .init("The Impossible"),
    .init("All Quiet on the Western Front"),
    .init("The English Patient"),
    .init("Dallas Buyers Club"),
    .init("Frida"),
    .init("Before Sunrise"),
    .init("The Rum Diary"),
    .init("The Last Samurai"),
    .init("Chinatown"),
    .init("Calvary"),
    .init("Before Sunset"),
    .init("Spirited Away"),
    .init("Indochine"),
    .init("Birdman or (The Unexpected Virtue of Ignorance)"),
    .init("Boyhood"),
    .init("12 Angry Men"),
    .init("The Imitation Game"),
    .init("Interstellar"),
    .init("Big Nothing"),
    .init("Das Boot"),
    .init("Shrek 2"),
    .init("Sin City"),
    .init("Nebraska"),
    .init("Shrek"),
    .init("Mr. & Mrs. Smith"),
    .init("Original Sin"),
    .init("Shrek Forever After"),
    .init("Before Midnight"),
    .init("Despicable Me"),
    .init("Troy"),
    .init("The Hobbit: An Unexpected Journey"),
    .init("The Great Gatsby"),
    .init("Ice Age"),
    .init("The Lord of the Rings: The Fellowship of the Ring"),
    .init("The Lord of the Rings: The Two Towers"),
    .init("Ex Machina"),
    .init("The Theory of Everything"),
    .init("Shogun"),
    .init("Spotlight"),
    .init("Vertigo"),
    .init("Whiplash"),
    .init("The Lives of Others"),
    .init("Hotel Rwanda"),
    .init("The Martian"),
    .init("To Kill a Mockingbird"),
    .init("The Hateful Eight"),
    .init("A Separation"),
    .init("The Big Short")
]
