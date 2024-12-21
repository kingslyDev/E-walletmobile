import 'package:bankga/shared/themes.dart';
import 'package:flutter/material.dart';

class CustomFieldText extends StatelessWidget {
  final String label;
  final bool obsecure;
  const CustomFieldText({
    super.key,
    required this.label,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Email input
        Text(
          label,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecure,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
