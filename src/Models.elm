module Models exposing (..)

type alias Movie = {
  id: Int,
  poster : Image,
  title: String,
  rating: Float,
  genre: List String,
  link: String,
  likes: Int,
  matchPercentage: Int,
  forKids: Bool,
  actors : List String
}

type alias Image = {
  url : String,
  width : Int,
  height : Int
}

type alias Preferences = {
  keywords: String,
  genre: String,
  favoriteActor: String
}

type alias Model = {movies : List Movie, shouldShowDialog: Bool, preferences: Preferences, genre: String, kidsProtection: Bool}


--MOVIES
moviesCollection : List Movie
moviesCollection = [avengers2, toyStory3, lionKing, it]

avengers2 : Movie
avengers2 = {id= 1, poster= createPoster "./Assets/Avengers_Age_Of_Ultron.png", title= "Avengers: Age of Ultron", rating= 8.3, genre= ["Action", "Adventure", "Superhero"], link= "https://www.youtube.com/watch?v=rD8lWtcgeyg", likes = 0, matchPercentage = 0, forKids = True, actors = ["Robert Downey JR", "Chris Hemsworth", "Mark Ruffalo", "Chris Evans", "Scarlett Johansson", "Samuel L. Jackson"]}

toyStory3 : Movie
toyStory3 = {id= 2, poster= createPoster "./Assets/Toy_Story_3_poster.png", title= "Toy Story 3", rating= 9.0, genre= ["Family", "Animated"], link= "https://www.youtube.com/watch?v=JcpWXaA2qeg", likes = 0, matchPercentage = 0, forKids = True, actors = ["Tom Hanks", "Tim Allen", "Don Rickles", "Wallace Shawn", "John Ratzenberger", "Ned Beatty", "Michael Keaton", "John Morris", "Blake Clark"]}

lionKing : Movie
lionKing = {id= 3, poster= createPoster "./Assets/The_Lion_King.png", title= "Lion King", rating= 9.5, genre= ["Family", "Animated"], link= "https://www.youtube.com/watch?v=_ujGv5dhGfk", likes = 0, matchPercentage = 0, forKids = True, actors = ["Rowan Atkinson", "Matthew Broderick", "Niketa Calame-Harris", "Jeremy Irons", "James Earl Jones", "Nathan Lane", "Ernie Sabella"]}

it : Movie
it = {id= 4, poster= createPoster "./Assets/it_poster.png", title= "IT", rating= 8.0, genre= ["Horror"], link= "https://www.youtube.com/watch?v=hAUTdjf9rko", likes = 0, matchPercentage = 0, forKids = False, actors = ["Jaeden Lieberher", "Bill Skarsgård", "Wyatt Oleff", "Jeremy Ray Taylor", "Sophia Lillis", "Finn Wolfhard"]}

--POSTERS
createPoster : String -> Image
createPoster imageUrl = { url= imageUrl, width= 400, height= 400 }

initialModel : Model
initialModel = { movies = moviesCollection, shouldShowDialog = False, preferences = Preferences "" "" "", genre = "", kidsProtection = False }
