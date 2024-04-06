import 'package:flutter/material.dart';
import 'package:gridview_ex/model/movies.dart';

class AppCardView extends StatelessWidget {
  const AppCardView({
    super.key,
    required this.movies,
    required this.index,
  });

  final List<Movies> movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "${movies[index].image}",
            fit: BoxFit.contain,
            height: 250,
            width: 200,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              width: double.infinity,
              color: Colors.green,
              child: Text(
                "${movies[index].title}",
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ))
        ],
      ),
    );
  }
}
