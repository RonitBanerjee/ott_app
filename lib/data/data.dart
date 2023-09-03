import 'package:flutter/material.dart';
import 'package:ott_app/assets.dart';
import 'package:ott_app/assets.dart';
import 'package:ott_app/data/movie.dart';
// import 'package:ott_app/models/Movie_model.dart';

List<Movie> sample = [
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
];

// final List<Movie> previews = [
//   Movie(
//     movieName: 'Painkiller',
//     releaseYear: DateTime.now().year.toString(),
//     duration: Duration(hours: 1, minutes: 30),
//     director: "Mari Selveraj",
//     starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
//     shortDescription:
//         "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
//     thumbNailUrl:
//         "https://media.discordapp.net/attachments/1141418377190064171/1141418696653422742/painkiller.jpg?width=306&height=430",
//     trailerUrl:
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
//   ),
//   Movie(
//     movieName: 'Lust Stories',
//     releaseYear: DateTime.now().year.toString(),
//     duration: Duration(hours: 1, minutes: 30),
//     director: "Mari Selveraj",
//     starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
//     shortDescription:
//         "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
//     thumbNailUrl:
//         "https://media.discordapp.net/attachments/1141418377190064171/1141418696988954695/luststories.jpg?width=306&height=430",
//     trailerUrl:
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
//   ),
//   Movie(
//     movieName: 'Heart Of Stone',
//     releaseYear: DateTime.now().year.toString(),
//     duration: Duration(hours: 1, minutes: 30),
//     director: "Mari Selveraj",
//     starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
//     shortDescription:
//         "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
//     thumbNailUrl:
//         "https://media.discordapp.net/attachments/1141418377190064171/1141418697362260018/heart_of_stone.jpg?width=306&height=430",
//     trailerUrl:
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
//   ),
//   Movie(
//     movieName: 'Padmini',
//     releaseYear: DateTime.now().year.toString(),
//     duration: Duration(hours: 1, minutes: 30),
//     director: "Mari Selveraj",
//     starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
//     shortDescription:
//         "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
//     thumbNailUrl:
//         "https://media.discordapp.net/attachments/1141418377190064171/1141419901312045106/padmini.png?width=306&height=430",
//     trailerUrl:
//         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
//   ),
//   Movie(
//     movieName: 'Carole and Tuesday',
//     releaseYear: DateTime.now().year.toString(),
//     duration: Duration(hours: 1, minutes: 30),
//     director: "Mari Selveraj",
//     starring: ["Vadivelu", "Sunil Reddy", "Lal", "Vijay Setupati"],
//     shortDescription:
//         "A part-time poet and a full-time college teacher Rameshans life take a standstill when an extremely embarrassing situation makes him the target of all jokes.",
//     trailerUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
//   ),
// ];

final List<Movie> myList = [
  Movie(
    movieName: 'Cheat',
    releaseYear: "2023",
    director: "Katherine Kelly",
    duration: Duration(hours: 1, minutes: 35),
    starring: ["Danny Dyer", "Ellie Taylor"],
    shortDescription:
        " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141418620791042128/cheat_ld.jpg?width=408&height=229",
  ),
  Movie(
    movieName: 'Get Organized With The Home Edit',
    releaseYear: "2020",
    director: "Amy Hall",
    duration: Duration(hours: 3, minutes: 15),
    starring: ["Clea Shearer", "Joanna Teplin", "Bobby Browning"],
    shortDescription:
        "Expert home organizers Clea and Joanna help celebrities and everyday clients edit, categorize and contain their clutter to create stunning spaces.",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141418619910246410/getOrganized_ld.jpg?width=408&height=229",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: 'Nadiya\'s Time To Eat',
    releaseYear: "2019",
    duration: Duration(hours: 1, minutes: 10),
    starring: ["Nadiya Hussain", "Shani Dhanda"],
    director: "Nadiya Hussain",
    shortDescription:
        "Chef Nadiya Hussain shares a mouthwatering selection of stress-free recipes designed to save time, calm our hectic modern lives and give us all time to eat",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141418620203839608/nadiya_ld.jpg?width=408&height=229",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: 'Iron Chef',
    releaseYear: "1993",
    director: "Chen Kenichi",
    starring: ["Chen Kenichi", "Hiroyuki Sakai", "Wayne LeGette"],
    duration: Duration(hours: 1, minutes: 53),
    shortDescription:
        "Chefs from all over the world come to Kitchen Stadium to do culinary battle with one of Chairman Kaga's Iron Chefs.",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141418620514226206/iron_chef.jpg?width=408&height=229",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
  Movie(
    movieName: 'Framed',
    releaseYear: "2021",
    director: "Nick Rizzini",
    starring: ["Thomas Law", "Edmund Kingsley", "Pasquale Esposito"],
    duration: Duration(hours: 2, minutes: 30),
    shortDescription:
        "A moral discussion between sexes arises when an aspiring photographer secretly takes pictures of his barely dressed neighbour in the search for his artistic expression.",
    thumbNailUrl:
        "https://media.discordapp.net/attachments/1141418377190064171/1141418619650191390/framed_ld.jpg?width=408&height=229",
    trailerUrl:
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  ),
];

final List<Movie> originals = [
  Movie(
      movieName: 'Lust Stories 2',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418696988954695/luststories.jpg?width=306&height=430"),
  Movie(
      movieName: 'Heart Of Stone',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418697362260018/heart_of_stone.jpg?width=306&height=430"),
  Movie(
      movieName: 'Behind Your Touch',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418696401752244/behind_your_touch.jpg?width=306&height=430"),
  Movie(
      movieName: 'PainKiller',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418696653422742/painkiller.jpg?width=306&height=430"),
  Movie(
      movieName: 'Kohraa',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418622699450499/kohrra.jpg?width=306&height=430"),
  Movie(
      movieName: 'King The Land',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418622225502298/king_the_land.jpg?width=306&height=430"),
];

final List<Movie> trending = [
  Movie(
      movieName: 'Faster',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419903031705771/faster.png?width=306&height=430"),
  Movie(
      movieName: 'Jujutsu Kaisen',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419903316922368/japani_anime.png?width=306&height=430"),
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
      movieName: 'What Men Want',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419901559504926/whatmenwant.png?width=306&height=430"),
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
  Movie(
      movieName: 'OMG',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419902452895754/omg.png?width=306&height=430"),
  Movie(
      movieName: 'Hidden Stike',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141419902700376166/hidden_strike.png?width=306&height=430"),
  Movie(
      movieName: 'Liclon Lawyer',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418621717983232/lincoln_lawyer.jpg?width=306&height=430"),
  Movie(
      movieName: 'Kohraa',
      releaseYear: "2023",
      director: "Katherine Kelly",
      duration: Duration(hours: 1, minutes: 35),
      starring: ["Danny Dyer", "Ellie Taylor"],
      shortDescription:
          " Equal parts brains and blagging, this quiz show expects and encourages contestants to cheat their way to a cash prize.",
      trailerUrl:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
      thumbNailUrl:
          "https://media.discordapp.net/attachments/1141418377190064171/1141418622699450499/kohrra.jpg?width=306&height=430"),
];
