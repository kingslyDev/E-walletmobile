import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class ProviderItem extends StatelessWidget {
  final String imgUrl;
  final String namaProvider;
  final bool isSelected;

  const ProviderItem({
    super.key,
    required this.imgUrl,
    required this.namaProvider,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: isSelected ? blackColor : whiteColor,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                namaProvider,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Available',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
