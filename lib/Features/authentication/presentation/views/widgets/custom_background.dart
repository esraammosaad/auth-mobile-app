import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBackGround extends StatelessWidget {
  const CustomBackGround({
    super.key,
    required this.image,
  });
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10.8),
                child: Image.asset(AssetsData.bgImage)),
          ],
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10.8),
            child: Image.asset(AssetsData.graphicsImage)),
        Padding(
          padding: const EdgeInsets.only(top: 75.0),
          child: image,
        )
      ],
    );
  }
}
