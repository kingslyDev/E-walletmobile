import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
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
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Center(
              child: Column(
                spacing: 16,
                children: [
                  CustomFieldText(label: 'Username'),
                  CustomFieldText(label: 'Full Name'),
                  CustomFieldText(label: 'Email Address'),
                  CustomFieldText(
                    label: 'Password',
                    obsecure: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
