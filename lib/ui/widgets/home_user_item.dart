import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class HomeUserItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  const HomeUserItem({
    super.key,
    required this.imgUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: EdgeInsets.only(
        right: 17,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          22,
        ),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(
              top: 18,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            '@$name',
            style: blackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
