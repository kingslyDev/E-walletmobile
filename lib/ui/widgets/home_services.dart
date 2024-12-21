import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class HomeServicesItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeServicesItem({
    super.key,
    required this.imgUrl,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: 8,
          ),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: Center(
            child: Image.asset(
              imgUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        )
      ],
    );
  }
}
