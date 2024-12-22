import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/register_page.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            width: 155,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Email input
                CustomFieldText(
                  label: 'Email Address',
                ),
                SizedBox(
                  height: 12,
                ),
                // Password input
                CustomFieldText(
                  label: 'Password',
                  obsecure: true,
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(fontWeight: regular),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextWidget(
            title: 'Create A New Account',
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ],
      ),
    );
  }
}
