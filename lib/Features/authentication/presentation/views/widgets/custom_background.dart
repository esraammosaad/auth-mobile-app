import 'package:auth_mobile_app/core/utilis/assets.dart';
import 'package:flutter/material.dart';
class CustomBackGround extends StatelessWidget {
  const CustomBackGround({
    super.key,
  });

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
          padding: const EdgeInsets.only(top: 100.0),
          child: Image.asset(AssetsData.logoImage),
        )
      ],
    );
  }
}
