import 'package:bankga/shared/shared_methods.dart';
import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class PackageDataItem extends StatelessWidget {
  final String data;
  final int price;
  final bool isSelected;
  const PackageDataItem({
    super.key,
    required this.data,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 171,
      margin: EdgeInsets.only(
        top: 14,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            data,
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            formatCurrency(price),
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
