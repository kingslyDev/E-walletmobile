import 'package:bankga/shared/shared_methods.dart';
import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:bankga/ui/widgets/provider_item.dart';
import 'package:flutter/material.dart';

class PackageDataPage extends StatelessWidget {
  const PackageDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_bgcard.png',
                width: 80,
                height: 55,
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance ${formatCurrency(120000)}',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Column(
            children: [
              ProviderItem(
                imgUrl: 'assets/img_tel.png',
                namaProvider: 'Telkomsel',
              ),
              ProviderItem(
                  imgUrl: 'assets/img_indosat.png', namaProvider: 'Indosat'),
              ProviderItem(
                  imgUrl: 'assets/img_sigtel.png', namaProvider: 'Singtel'),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/packagenominal');
            },
          ),
        ],
      ),
    );
  }
}
