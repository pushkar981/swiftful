import Foundation

struct MovieModel {
    var title: String
    var genre: MovieGenre
    private(set) var isFavorite: Bool
    
    // Non-mutating
    func updateFavoriteStatus(newValue: Bool) -> MovieModel {
        return MovieModel(title: self.title, genre: self.genre, isFavorite: newValue)
    }
    
    // Mutating
    mutating func updateFavoriteStatus2(newValue: Bool) {
        isFavorite = newValue
    }
}

enum MovieGenre {
    case comedy, action, horror, cartoon
}

class MovieManager {
    // Be default these vars are "internal"
    var movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
    
    // This is private to the class
    private var movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
    
    // Read is public but set is private
    private(set) var movie3 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
}


let manager = MovieManager()
//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)
print(manager.movie1)


var someValue = manager.movie1.title            // this is a copy of title
print(someValue)
someValue = "Top Gun"
print(someValue)
print(manager.movie1.title)
