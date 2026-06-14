import 'package:flutter/material.dart';

import '../../data/jokes.dart';
import '../theme/theme.dart';
import '../widgets/favorite_card.dart';

class FavoriteJokesPage extends StatefulWidget {
  const FavoriteJokesPage({super.key});

  @override
  State<FavoriteJokesPage> createState() {
    return _FavoriteJokesPageState();
  }
}

class _FavoriteJokesPageState extends State<FavoriteJokesPage> {
  int? favoriteIndex;

  void onFavoriteClick(int index) {
    setState(() {
      favoriteIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: appColor, title: Text("Favorite Jokes")),

      body: ListView.builder(
        itemCount: jokes.length,
        itemBuilder: (context, index) {
          return FavoriteCard(
            title: jokes[index].title,
            description: jokes[index].description,
            isFavorite: favoriteIndex == index,
            onFavoriteClick: () {
              onFavoriteClick(index);
            },
          );
        },
      ),
    );
  }
}
