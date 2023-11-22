import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app/model/movie/index.dart';
import 'package:movie_app/widgets/movie_card.dart';
import 'package:movie_app/widgets/movie_special_card.dart';

class MoviesPage extends StatefulWidget {
  const MoviesPage({super.key});

  @override
  State<MoviesPage> createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  Future<List<MovieModel>> _getData() async {
    String result =
        await DefaultAssetBundle.of(context).loadString("assets/movies.json");
    return MovieModel.fromList(jsonDecode(result));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getData(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          final _specialData = snapshot.data!.length > 3
              ? snapshot.data!.sublist(0, 3)
              : snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    "Шилдэг кинонууд",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(_specialData.length,
                            (index) => MovieSpecialCard(_specialData[index])),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    "Бүх кинонууд",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Wrap(
                    spacing: 20,
                    children: List.generate(
                      snapshot.data!.length,
                      ((index) => MovieCard(snapshot.data![index])),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
}
