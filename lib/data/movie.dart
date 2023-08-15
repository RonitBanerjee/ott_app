class Movie {
  String movieName;
  String thumbNailUrl;
  String shortDescription;
  int? noOfSeasons;
  Duration duration;
  String releaseYear;
  List<String> starring;
  String director;
  String trailerUrl;

  Movie({
    required this.movieName,
    required this.thumbNailUrl,
    required this.shortDescription,
    this.noOfSeasons,
    required this.duration,
    required this.releaseYear,
    required this.starring,
    required this.director,
    required this.trailerUrl,
  });
}

List<Movie> movies = [
  Movie(
    movieName: "Maamannnan",
    releaseYear: "2023",
    duration: Duration(hours: 2, minutes: 35),
    director: "Mari Selveraj",
    starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
    shortDescription:
        "A man collects evidence to flip him upside down when he was helpless to stop his endless torture.The community that was exploited by the town's influential man",
    thumbNailUrl: "assets/maamannan.jpg",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: "El Camino: A Breaking Bad Movie",
    releaseYear: "2019",
    duration: Duration(hours: 2, minutes: 2),
    director: "Vince Gilligan",
    starring: ["Aaron", "Paul Jonathan", "Banks Matt", "Jones"],
    shortDescription:
        "After escaping Jack and his gang, Jesse Pinkman goes on the run from the police ... Fugitive Jesse Pinkman runs from his captors, the law, and his past.",
    thumbNailUrl: "assets/elcamino.jpg",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: "The Terminal",
    releaseYear: "2004",
    duration: Duration(hours: 2, minutes: 8),
    director: "Steven Spielberg",
    starring: ["Tom Hanks", "Catherine Zeta-Jones", "Stanley Tucci"],
    shortDescription:
        "An Eastern European tourist unexpectedly finds himself stranded in JFK airport, and must take up temporary residence there.",
    thumbNailUrl: "assets/theterminal.jpg",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: "Extraction 2",
    releaseYear: "2023",
    duration: Duration(hours: 2, minutes: 3),
    director: "Sam Hargrave",
    starring: ["Chris Hemsworth", " Golshifteh Farahani", "Adam Bessa"],
    shortDescription:
        "After barely surviving his grievous wounds from his mission in Dhaka, Bangladesh, Tyler Rake is back, and his team is ready to take on their next mission.",
    thumbNailUrl: "assets/extraction2.jpg",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  )
];
