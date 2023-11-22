import 'package:flutter/material.dart';
import 'package:movie_app/screens/movies.dart';
import 'package:movie_app/screens/profile.dart';
import 'package:movie_app/screens/wishList.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _totalPages = [MoviesPage(), WishListPage(), ProfilePage()];

  void _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393f),
      body: SafeArea(child: _totalPages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _setCurrentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Кино"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Дуртай кино"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профайл"),
        ],
      ),
    );
  }
}
