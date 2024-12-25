import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:bankga/ui/widgets/transfer_result_user_item.dart';
import 'package:bankga/ui/widgets/transfer_user_recent_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          CustomFieldText(
            label: 'by username',
            isShowtitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),
        ],
      ),
    );
  }

  Widget buildRecentUsers() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TransferUserRecentItem(
            imgUrl: 'assets/img_per1.png',
            name: 'Dadang',
            username: 'ddg1 ',
            isVerified: true,
          ),
          TransferUserRecentItem(
            imgUrl: 'assets/img_per2.png',
            name: 'dani',
            username: 'ddg1 ',
          ),
          TransferUserRecentItem(
            imgUrl: 'assets/img_per3.png',
            name: 'Todi',
            username: 'ddg1 ',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 24,
            children: [
              TransferResultUserItem(
                imgUrl: 'assets/img_per1.png',
                name: 'Dadang',
                username: 'ddg1 ',
                isVerified: true,
                isSelected: true,
              ),
              TransferResultUserItem(
                imgUrl: 'assets/img_per1.png',
                name: 'Dadang',
                username: 'ddg1 ',
                isVerified: true,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
