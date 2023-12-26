import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/ScrollColorRemove.dart';
import 'package:we_care/Utils/Constants.dart';

import '../Packages/CustomeTexts.dart';

class BookAppoinmentScreen extends StatelessWidget {
  const BookAppoinmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: ScrollColorRemove(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      text: "Book Appointment",
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
              const SizedBox(height: 12),
              CP(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFW700(
                          text: "Booking Day",
                          fontSize: 18,
                          textcolor: MyColor.textColor2),
                    ],
                  ),
                  const SizedBox(height: 35),
                  TextFW700(
                      text: "Time Slot",
                      fontSize: 18,
                      textcolor: MyColor.textColor2),
                  const SizedBox(height: 16),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
