import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class EditPinPage extends StatelessWidget {
  const EditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Pin',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 22,
        ),
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(
                24,
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  CustomFieldText(label: 'Old Pin'),
                  CustomFieldText(label: 'New Pin'),
                  SizedBox(
                    height: 10,
                  ),
                  CustomFilledButton(
                    title: 'Edit Pin',
                    onPressed: () {
                      Navigator.pushNamed(context, '/editacc');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
