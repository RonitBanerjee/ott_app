import 'package:flutter/material.dart';
import 'package:ott_app/assets.dart';
import 'package:ott_app/models/models.dart';
import 'package:ott_app/assets.dart';
import 'package:ott_app/models/content_model.dart';

const Content sintelContent = Content(
  name: 'Sintel',
  imageUrl: Assets.sintel,
  titleImageUrl: Assets.sintelTitle,
  videoUrl: Assets.sintelVideoUrl,
  description:
      'A lonely young woman, Sintel, helps and befriends a dragon,\nwhom she calls Scales. But when he is kidnapped by an adult\ndragon, Sintel decides to embark on a dangerous quest to find\nher lost friend Scales.',
);

final List<Content> previews = [
  const Content(
    name: 'Stranger Things',
    imageUrl: Assets.strangerThings2,
    color: Colors.red,
    titleImageUrl: Assets.atlaTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Avatar The Last Airbender',
    imageUrl: Assets.atla,
    color: Colors.orange,
    titleImageUrl: Assets.atlaTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'The Crown',
    imageUrl: Assets.crown,
    color: Colors.red,
    titleImageUrl: Assets.crownTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'The Umbrella Academy',
    imageUrl: Assets.umbrellaAcademy,
    color: Colors.yellow,
    titleImageUrl: Assets.umbrellaAcademyTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Carole and Tuesday',
    imageUrl: Assets.caroleAndTuesday,
    color: Colors.lightBlueAccent,
    titleImageUrl: Assets.caroleAndTuesdayTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
  const Content(
    name: 'Black Mirror',
    imageUrl: Assets.blackMirror,
    color: Colors.green,
    titleImageUrl: Assets.blackMirrorTitle,
    videoUrl: "https://www.youtube.com/watch?v=mnd7sFt5c3A",
  ),
];

final List<Content> myList = [
  const Content(name: 'Violet Evergarden', imageUrl: Assets.violetEvergarden),
  const Content(
      name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof),
  const Content(name: 'Kakegurui', imageUrl: Assets.kakegurui),
  const Content(name: 'Black Mirror', imageUrl: Assets.blackMirrorTitle),
  const Content(
      name: 'How to Sell Drugs Online (Fast)', imageUrl: Assets.htsdof),
];

final List<Content> originals = [
  const Content(name: 'Stranger Things', imageUrl: Assets.strangerThings2),
  const Content(name: 'The Witcher', imageUrl: Assets.witcher),
  const Content(name: 'The Umbrella Academy', imageUrl: Assets.umbrellaAcademy),
  const Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
  const Content(name: 'The End of the F***ing World', imageUrl: Assets.teotfw),
];

final List<Content> trending = [
  const Content(name: 'Vikings', imageUrl: Assets.explained),
  const Content(name: '13 Reasons Why', imageUrl: Assets.thirteenReasonsWhy),
  const Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
  const Content(name: 'The Crown', imageUrl: Assets.crown),
  const Content(name: 'Dogs', imageUrl: Assets.dogs),
  const Content(name: 'Explained', imageUrl: Assets.explained),
  const Content(name: 'Avatar The Last Airbender', imageUrl: Assets.atla),
  const Content(name: 'Tiger King', imageUrl: Assets.tigerKing),
  const Content(name: 'The Crown', imageUrl: Assets.crown),
  const Content(name: 'Dogs', imageUrl: Assets.dogs),
];
