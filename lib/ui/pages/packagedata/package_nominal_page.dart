import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/packagedata/package_success_page.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/forms.dart';
import 'package:bankga/ui/widgets/package_data_item.dart';
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
          const SizedBox(
            height: 5,
          ),
          CustomFieldText(
            label: '+628',
            isShowtitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Wrap(
            spacing: 20,
            children: [
              PackageDataItem(
                data: '10GB',
                price: 100000,
                isSelected: true,
              ),
              PackageDataItem(
                data: '20GB',
                price: 100000,
              ),
              PackageDataItem(
                data: '30GB',
                price: 100000,
              ),
              PackageDataItem(
                data: '50GB',
                price: 100000,
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PackageSuccessPage()),
                  (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
