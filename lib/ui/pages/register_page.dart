import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
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
              children: [
                CustomFieldText(
                  label: 'Full Name',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFieldText(
                  label: 'Email Address',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFieldText(
                  label: 'Password',
                  obsecure: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/registerpic');
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextWidget(
            title: 'Sign In',
            onPressed: () {
              Navigator.pushNamed(context, '/signin');
            },
          ),
        ],
      ),
    );
  }
}
