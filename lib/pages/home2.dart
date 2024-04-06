import 'package:flutter/material.dart';
import 'package:gridview_ex/widgets/app_card.dart';

import '../model/movies.dart';
import '../utils/asset_strings.dart';

//1.-> count
//2.-> builder

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({
    super.key,
  });

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  List<Movies> movies = [
    Movies(
        title: "Interstellar",
        desc: "Space exploration and human survival.",
        image: AssetString.interstellar),
    Movies(
        title: "The Grand Budapest Hotel",
        desc: "Quirky adventures in luxurious hotel.",
        image: AssetString.thegrandbudapesthotel),
    Movies(
        title: "Avatar",
        desc: "Journey to alien world Pandora.",
        image: AssetString.avatar),
    Movies(
        title: "The Departed",
        desc: "Undercover cops and mobsters clash.",
        image: AssetString.theDeparted),
    Movies(
        title: "The Prestige",
        desc: "Rival magicians' escalating feud.",
        image: AssetString.theprestige),
    Movies(
        title: "Inglourious Basterds",
        desc: "Revenge mission against Nazi regime.",
        image: AssetString.inglouriousBasterds),
    Movies(
        title: "The Social Network",
        desc: "Birth of Facebook and disputes.",
        image: AssetString.thesocialnetwork),
    Movies(
        title: "Gravity",
        desc: "Astronauts stranded in space.",
        image: AssetString.gravity)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Grid View"),
      ),
      body: Container(
        color: Colors.amber,
        margin: const EdgeInsets.all(10),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: .65,
          children: List.generate(
            movies.length,
            (index) => AppCardView(
              movies: movies,
              index: index,
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
