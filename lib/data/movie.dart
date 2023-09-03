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
    movieName: "Padmini",
    releaseYear: "2023",
    duration: Duration(hours: 2, minutes: 35),
    director: "Mari Selveraj",
    starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
    shortDescription:
        "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141419901312045106/padmini.png?width=306&height=430",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
      movieName: 'Adipurush',
      releaseYear: "2023",
      director: "Om Raut",
      duration: Duration(hours: 2, minutes: 35),
      starring: ["Prabhas", "Kriti Sannon"],
      shortDescription:
          "A modern adaptation of the Indian epic Ramayana which follows the exiled prince Raghav's journey to rescue his wife Janaki from the demon king Lankesh.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419901010051112/adipurush.png?width=306&height=430"),
  Movie(
      movieName: 'Rangabali',
      releaseYear: "2023",
      director: "Pawan Basamsetti",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Naga Shaurya", "Yukti Thareja"],
      shortDescription:
          "When carefree Shaurya has to move from Rajavaram to the big city, he faces a tricky path to romance — and new revelations about his beloved hometown.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419901878276296/ranabali.png?width=306&height=430"),
  Movie(
      movieName: 'Maamannan',
      releaseYear: "2023",
      director: "Mari Selvaraj",
      duration: Duration(hours: 2, minutes: 10),
      starring: ["Vadivelu Fahadh", "Faasil Keerthy", "Suresh"],
      shortDescription:
          "The community that was exploited by the town's influential man, who completely rules due to the powerful backing of the authorities. A man collects evidence to flip him upside down when he was helpless to stop his endless torture.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419902150901841/manamman.png?width=306&height=430"),
];
