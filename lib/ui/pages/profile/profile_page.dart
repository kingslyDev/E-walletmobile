import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 128,
                  height: 128,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: whiteColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Ghaly Abrarian',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ProfileMenuItem(
                    iconUrl: 'assets/ic_editprofile.png',
                    title: 'Edit Profile',
                    onTap: () async {
                      if (await Navigator.pushNamed(context, '/pin') == true) {
                        Navigator.pushNamed(context, '/editprofile');
                      }
                    }),
                ProfileMenuItem(
                  iconUrl: 'assets/pin.png',
                  title: 'My Pin',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'My Wallet',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_reward.png',
                  title: 'My Reward',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Logout',
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextWidget(
            title: 'Report A Problem',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
