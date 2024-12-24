import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class PackageNominalPage extends StatelessWidget {
  const PackageNominalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Package'),
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomFieldText(
            label: '',
            isShowtitle: false,
          )
        ],
      ),
    );
  }
}
