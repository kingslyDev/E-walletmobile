import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/home_page.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class EditSuccessPage extends StatelessWidget {
  const EditSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Update',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your data is safe with\nour system',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            CustomFilledButton(
              title: 'My Profile',
              width: 190,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                  (route) => false,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
