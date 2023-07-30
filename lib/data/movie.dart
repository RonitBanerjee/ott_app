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
        "https://imdb-video.media-imdb.com/vi1335150361/1434659607842-pgv4ql-1689690429554.mp4?Expires=1690826529&Signature=MYr7jENZs9EIbw~GlOfnLa~I7vy0AtFHIu6geqLwKjDuCyDHXBo0E8PXc-aico8hC2k1vzhUqXrQZx3pzfIirfqd59ps0MVWXuXSUQ-1eF3oLRqvBkz3uHebv3AledIoxAmBs0XK5tnGqc8AwTJY4xbaFY6~ck2bqx-sLXG6iDhAoIiBp~HOb2Gi~BQQFjPUi6xXKAZojpfMec57-8lx3RqBKAp5KgKPiHFLA92k0SPlFioSEl8zFJSfsn4SY~eS4GzURRF98Ez-TpTb8x~u9uld4hE6IBlrgdUAX6DjcD1-Mh3UXHeAxVkrim8MdN~aP21wGciiifjLOgzHEDYG0w__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        "https://imdb-video.media-imdb.com/vi402046745/1434659607842-pgv4ql-1571092588940.mp4?Expires=1690826379&Signature=KrvAB7nMmI9cgacLPvyF5JPXKbZpNxqR8FtgLSVeJS5yYqg4R43GNSRG1vbG8qs2L53W9Q88L48OlCTESDGzLzP4uSPSteTSzJEQ-81vZnrenqZVtAFCtdA~~Uh6-PHzF5tR4H-r4yGCf5nXXO2vOyf~HU2K~ZAePbLCE~lTl7vlC7FEJQn6AvZ-yqZNHhv138FKQmTx9~lcS7A9HQP~2Z~1RWaxuDlrPb~xQRpnXnESGr-imeH5kN1FUyR0CZWXfW8hxoNNXmsrY4rMfVLjxWWVeAY0kP-RY0o4BOParrnagsyj5ZPE6Edgresu0t3eeB0y-jtgHIx--hm8nQG0bA__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        "https://imdb-video.media-imdb.com/vi2012938521/1434659607842-pgv4ql-1564512813874.mp4?Expires=1690826176&Signature=mUXy3FcVkn2Y6UEEls4QJtueSAoWWiN3Qb1bj6QBTLyDHIfzZI~6mZKQbePDIkRGe~3Mnh3kQ3r5CFiYvF-Wu5E8oxAWplaT77JlArNajI3a4OdbqJVj95dWzpPrXWkRxc9Xf~75sSj2vLJaVFrL~3U2~tRd9rTux-rroKw~b885oCS0GnNGorypLMa2F5NqAKgRntT9XrEl5PZ0~fgM7BEk8RCn4NFj3~iIsI8f2qMKEKIt14kipDekdQjDI842wAY4dZXAklH7qom7mxr~eSkTumJw80qzImiW0F3-UIXpOHdBDVDqQ1WAY4LOGfDeFqvdlKWXaLVdJW1Ng5Cq2Q__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
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
        "https://imdb-video.media-imdb.com/vi1028899865/1434659607842-pgv4ql-1684247298841.mp4?Expires=1690827124&Signature=NxcN79aoLKfj61eBmYjX2UGHmjIfXJ2KzSD~qLtbS~DSUAJNIl6w4T2eWrEYz2gij1cUzYnILI9XtQFY8KOrjM5bIR9jrudEKVFM1li~bMJD7K2LQmUSRXrLc-XeTvUjCM6QLkA~Sc5su-F8PlGtFIi2tVlVg3Wpk1dXZMRccV2~8d6rCKbITdD7reF0L1Zd1MQ2oV4Xpjbn~3GIOCdtRyESsOlNPu02Vz~swtUdgdqFm-AixYpgYlqIB5kaQvShw81t-vUXipMI6uNCE1XRL0mPdLloCtL~OUk4WGMbdVQuDdir4kWjg8CokhGHLQCDVV9VlVo7pyIUKi9BSAFyAg__&Key-Pair-Id=APKAIFLZBVQZ24NQH3KA",
  )
];
