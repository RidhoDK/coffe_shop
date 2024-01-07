import 'package:flutter/material.dart';
import 'package:tugas_3/theme.dart';
import 'package:tugas_3/combo_menu.dart';
import 'package:tugas_3/order_and_add.dart';
import 'package:tugas_3/size_cup.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD1E1E0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'asset/image/Right.png',
                      width: 24,
                    ),
                  ),
                  Image.asset(
                    'asset/image/more.png',
                    width: 24,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'asset/image/caramel.png',
                  width: 192,
                  height: 195,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Caramel Macchiato',
                      style: semiboldText.copyWith(
                          fontSize: 24, color: colorTheme),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                      style: regularText.copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Size',
                style: semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 12,
              ),
              sizeCup(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Combo',
                style: semiboldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 12,
              ),
              comboMenu(),
              SizedBox(
                height: 54,
              ),
              orderAndAdd(),
              SizedBox(
                height: 30,
              )
            ]),
          ),
        ),
      ),
    );
  }
}