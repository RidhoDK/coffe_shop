import 'package:flutter/material.dart';
import 'package:tugas_3/second_page.dart';
import 'package:tugas_3/theme.dart';

class onboardingPage extends StatelessWidget {
  const onboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'asset/image/bg.png',
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                SizedBox(height: 400),
                Center(
                  child: Text(
                    'Sweet &\nNaise Coffee',
                    textAlign: TextAlign.center,
                    style: boldText.copyWith(fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Naise Coffee can change The \natmosphere in the morning',
                  textAlign: TextAlign.center,
                  style: regularText.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - (2 * 58),
                  height: 55,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 7,
                          backgroundColor: colorTheme,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const secondPage())
                        );
                      },
                      child: Text(
                        'ORDER NOW',
                        style: semiboldText,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
