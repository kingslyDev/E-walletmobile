import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/home_page.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class TopupSuccessPage extends StatelessWidget {
  const TopupSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Top Up\nWallet Berhasil',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'Use the money wisely and\ngrow your finance',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            CustomFilledButton(
              title: 'Back To Home',
              width: 230,
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
