import 'package:flutter/material.dart';
import '../theme/theme.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.onFavoriteClick,
  });
  final String title;
  final String description;
  final bool isFavorite;
  final VoidCallback onFavoriteClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.all(15), child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(color: appColor, fontWeight: FontWeight(15)),
                ),
                SizedBox(height: 10),
                Text(description),
              ],
            ), ),
             
          
          IconButton(onPressed: onFavoriteClick, icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border), color: isFavorite ? Colors.red : Colors.grey,)
        ], 
      ), 
      
    );
  }
}
