import 'package:bankga/shared/themes.dart';
import 'package:bankga/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ga PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: pinController,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
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
                      addPin('1');
                    },
                  ),
                  CustomInputButton(
                    nomer: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CustomInputButton(
                    nomer: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CustomInputButton(
                    nomer: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CustomInputButton(
                    nomer: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CustomInputButton(
                    nomer: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CustomInputButton(
                    nomer: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CustomInputButton(
                    nomer: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CustomInputButton(
                    nomer: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CustomInputButton(
                    nomer: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
            ],
          ),
        ),
      ),
    );
  }
}
