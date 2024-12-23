import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/bank_item.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Topup'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Wallet',
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
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
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
                      'Ghaly Abrarian',
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 14,
              ),
              BankItem(
                imgUrl: 'assets/img_bca.png',
                nameBank: 'BANK BCA',
                isSelected: true,
              ),
              BankItem(imgUrl: 'assets/img_bni.png', nameBank: 'BANK BNI'),
              BankItem(
                  imgUrl: 'assets/img_mandiri.png', nameBank: 'BANK MANDIRI'),
              BankItem(imgUrl: 'assets/img_onbc.png', nameBank: 'BANK OCBC'),
              SizedBox(
                height: 30,
              ),
              CustomFilledButton(title: 'Continue'),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
