import 'package:flutter/material.dart';

class CircleProfileImage extends StatelessWidget {
  final double width;
  final String? imageUrl;

  const CircleProfileImage({super.key, required this.imageUrl, required this.width});

  @override
  Widget build(BuildContext context) {
    return imageUrl == null
        ? Image.asset(
            'assets/images/default_profile.png',
            width: width,
          )
        : CircleAvatar(
            radius: width/2,
            backgroundImage: NetworkImage(
              imageUrl!,
            ),
          );
  }
}
