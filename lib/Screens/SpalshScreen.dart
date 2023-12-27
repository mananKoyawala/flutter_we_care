import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomeTexts.dart';
import 'package:we_care/Screens/Dashborad.dart';
import 'package:we_care/Utils/Constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    onSplashComplete();
    super.initState();
  }

  Future onSplashComplete() async {
    await Future.delayed(const Duration(milliseconds: 1500));
    onPush();
  }

  onPush() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.themeColor,
      body: SizedBox(
        height: DP.infinity(context),
        width: DP.infinity(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: DP.dHeight(context, 6),
              child: Image.asset("assets/icons/heartIcon.png"),
            ),
            const SizedBox(height: 30),
            TextFW500(
                text: "We Care",
                fontSize: 66,
                fontWeight: FontWeight.w400,
                textcolor: MyColor.white,
                fontFamily: 'fontFamily'),
            // const SizedBox(height: 15),
            TextFW500(
                text: "Online Doctor",
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: 'fontFamily',
                textcolor: MyColor.white)
          ],
        ),
      ),
    );
  }
}
