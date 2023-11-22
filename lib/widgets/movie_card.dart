import 'package:flutter/material.dart';
import 'package:movie_app/model/movie/index.dart';

class MovieCard extends StatelessWidget {
  final MovieModel data;
  const MovieCard(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 3 - 20;
    return Column(
      children: [
        Container(
          height: width * 1.5,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(data.imgUrl), fit: BoxFit.fill)),
        ),
        SizedBox(
          width: width,
          child: Text(
            data.title,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
