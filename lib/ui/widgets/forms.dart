import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {
  final String label;
  final bool obsecure;
  final TextEditingController? controller;
  final bool isShowtitle;
  const CustomFieldText({
    super.key,
    required this.label,
    this.obsecure = false,
    this.controller,
    this.isShowtitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Email input
        if (isShowtitle)
          Text(
            label,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
        if (isShowtitle)
          SizedBox(
            height: 8,
          ),
        TextFormField(
          obscureText: obsecure,
          controller: controller,
          decoration: InputDecoration(
            hintText: !isShowtitle ? label : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: blueColor),
            ),
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
