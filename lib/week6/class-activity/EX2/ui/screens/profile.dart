import 'package:flutter/material.dart';

import '../../model/profile_tile_model.dart';
import '../theme/theme.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key, required this.profileData});

  final ProfileData profileData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary.withAlpha(100),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(profileData.avatarUrl),
          ),

          const SizedBox(height: 20),

          Text(
            profileData.name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          Text(
            profileData.position,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),

          const SizedBox(height: 20),

          for (TileData tile in profileData.tiles)
            ProfileTile(icon: tile.icon, title: tile.title, data: tile.value),
        ],
      ),
    );
  }
}

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  final IconData icon;
  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: Icon(icon, color: AppColors.primary),
        title: Text(title),
        subtitle: Text(data),
      ),
    );
  }
}
