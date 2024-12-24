import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/pages/topup/topup_success_page.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopupAmountPage extends StatefulWidget {
  const TopupAmountPage({super.key});

  @override
  State<TopupAmountPage> createState() => _TopupAmountPageState();
}

class _TopupAmountPageState extends State<TopupAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(int.parse(text.replaceAll('.', ''))),
      );
    });
  }

  addAmount(String number) {
    if (amountController.text == '0' && number == '0') {
      // Jika angka yang dimasukkan adalah 0 dan input sudah 0, tidak lakukan apa-apa
      return;
    }

    if (amountController.text == '0') {
      // Jika input hanya 0, reset menjadi kosong
      setState(() {
        amountController.text = '';
      });
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteAmount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          SizedBox(
            height: 60,
          ),
          Text(
            'Total Amount',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 72,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: semiBold,
                  letterSpacing: 2,
                ),
                decoration: InputDecoration(
                  prefix: Text(
                    'Rp',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: semiBold,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputButton(
                nomer: '1',
                onTap: () {
                  addAmount('1');
                },
              ),
              CustomInputButton(
                nomer: '2',
                onTap: () {
                  addAmount('2');
                },
              ),
              CustomInputButton(
                nomer: '3',
                onTap: () {
                  addAmount('3');
                },
              ),
              CustomInputButton(
                nomer: '4',
                onTap: () {
                  addAmount('4');
                },
              ),
              CustomInputButton(
                nomer: '5',
                onTap: () {
                  addAmount('5');
                },
              ),
              CustomInputButton(
                nomer: '6',
                onTap: () {
                  addAmount('6');
                },
              ),
              CustomInputButton(
                nomer: '7',
                onTap: () {
                  addAmount('7');
                },
              ),
              CustomInputButton(
                nomer: '8',
                onTap: () {
                  addAmount('8');
                },
              ),
              CustomInputButton(
                nomer: '9',
                onTap: () {
                  addAmount('9');
                },
              ),
              SizedBox(
                width: 60,
                height: 60,
              ),
              CustomInputButton(
                nomer: '0',
                onTap: () {
                  addAmount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomFilledButton(
            title: 'Topup Now',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                await launchUrl(Uri.parse('https://demo.midtrans.com/'));

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TopupSuccessPage()),
                  (route) => false,
                );
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextWidget(title: 'Terms & Conditions'),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
