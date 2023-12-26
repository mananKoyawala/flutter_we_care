import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/ElevatedButton.dart';
import 'package:we_care/Packages/WhiteBGButton.dart';

import '../Packages/CustomeTexts.dart';
import '../Utils/Constants.dart';

class WaitingRoomScreen extends StatelessWidget {
  const WaitingRoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: MyColor.white,
              alignment: Alignment.center,
              height: 56,
              width: DP.infinity(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Nav.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                      )),
                  TextFW700(
                    text: "Appointment Details",
                    fontSize: 22,
                    textcolor: MyColor.black,
                  ),
                  IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: MyColor.white,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 194,
              width: DP.infinity(context),
              child: Image.asset(
                "assets/images/appoinmentDetails.png",
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFW400(
                      text: "Your appointment is booked with",
                      fontSize: 16,
                      textcolor: MyColor.textColor1,
                    ),
                    const SizedBox(height: 10),
                    TextFW700(
                      text: "Dr. Stacy Williams",
                      fontSize: 24,
                      textcolor: MyColor.black,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range,
                          color: MyColor.textColor3,
                        ),
                        const SizedBox(width: 5),
                        TextFW400(
                            text: "14 Dec, 2021",
                            fontSize: 16,
                            textcolor: MyColor.textColor3),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 20,
                          child: Image.asset("assets/icons/lock.png"),
                        ),
                        const SizedBox(width: 5),
                        TextFW400(
                            text: "10:00 AM",
                            fontSize: 16,
                            textcolor: MyColor.textColor3),
                      ],
                    ),
                    const SizedBox(height: 40),
                    TextFW400(
                      text: "Your waiting time is",
                      fontSize: 16,
                      textcolor: MyColor.textColor1,
                    ),
                    const SizedBox(height: 10),
                    TextFW700(
                      text: "01:26:00",
                      fontSize: 24,
                      textcolor: MyColor.textColor1,
                    ),
                    const SizedBox(height: 35),
                    CP(
                      h: 16,
                      child: TextFW400(
                        textAlign: TextAlign.center,
                        text:
                            "You will be able to join the meeting on booked appointment time. Meanwhile complete your medical history.",
                        fontSize: 14,
                        textcolor: MyColor.textColor1,
                      ),
                    ),
                  ],
                ),
              ),
            )),
            CP(
              h: 16,
              v: 16,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: WhiteBGButton(
                      height: 44,
                      title: "Update Medical History",
                      onTap: () {},
                      borderColor: MyColor.themeColor,
                      textColor: MyColor.themeColor,
                    ),
                  ),
                  const SizedBox(width: 16),
                  CustomButton(
                    radius: 4,
                    onPress: () {},
                    height: 44,
                    size: 16,
                    width: 100,
                    label: "Join Now",
                    bgcolor: MyColor.themeColor,
                    txtcolor: MyColor.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
