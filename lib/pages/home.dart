import 'package:flutter/material.dart';
import 'package:gridview_ex/widgets/app_card.dart';

import '../model/movies.dart';
import '../utils/asset_strings.dart';

//1.-> count
//2.-> builder

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        margin: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: movies.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.65),
          itemBuilder: (context, index) {
            return AppCardView(movies: movies, index: index);
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
