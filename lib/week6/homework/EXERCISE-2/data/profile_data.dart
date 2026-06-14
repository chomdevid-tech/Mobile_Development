import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData devidProfile = ProfileData(
  name: "Devid",
  position: "CyberSecurity",
  avatarUrl: 'assets/w5-s2/aang.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "chom.devid@cadt.edu"),
    TileData(icon: Icons.gamepad_rounded, title: "hobby", value: "Gaming"),
  ],
);
