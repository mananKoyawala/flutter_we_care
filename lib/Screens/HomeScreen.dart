import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/CustomeTexts.dart';
import 'package:we_care/Packages/RippleEffectContainer.dart';
import 'package:we_care/Screens/DoctorListScreen.dart';
import 'package:we_care/Utils/Constants.dart';

import '../Packages/SearchField.dart';
import 'AppointmentsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            CP(
              h: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const SearchFeild(),
                  const SizedBox(height: 25),
                  TextFW500(
                    text: "Specialize Doctor",
                    fontSize: 18,
                    textcolor: MyColor.textColor2,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeComponent(
                          onTap: () {},
                          title: "Ear",
                          imgurl: "assets/icons/ear.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: "Stomach",
                          imgurl: "assets/icons/stomach.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: "Kidney",
                          imgurl: "assets/icons/kidney.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: "Lungs",
                          imgurl: "assets/icons/lungs.png",
                          height: 40,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeComponent(
                          onTap: () {},
                          title: "Bones",
                          imgurl: "assets/icons/bones.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const DoctorListScreen()));
                          },
                          title: "Heart",
                          imgurl: "assets/icons/heart.png",
                          height: 35,
                        ),
                        const SizedBox(height: 80, width: 72),
                        const SizedBox(height: 80, width: 72)
                      ]),
                ],
              ),
            ),
            Expanded(
              child: Visibility(
                visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
                child: ListView(
                  reverse: true,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    AppoinmentRow(
                        backgroundColor: MyColor.themeColorO5,
                        title: "Dr. Stacy Williams",
                        imgurl: "assets/images/drAvtar1.png",
                        date: "14 Dec, 2021",
                        time: "10:00 AM"),
                    AppoinmentRow(
                        backgroundColor: MyColor.themeColorO5,
                        title: "Dr. Alexandra Williams",
                        imgurl: "assets/images/drAvtar5.png",
                        date: "25 JUN, 2022",
                        time: "12:00 PM")
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}

class HomeComponent extends StatelessWidget {
  const HomeComponent({
    Key? key,
    required this.title,
    required this.imgurl,
    required this.height,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final String imgurl;
  final double height;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ClickEffect(
      onTap: onTap,
      rippleColor: MyColor.rippleColor,
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        height: 80,
        width: 72,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: height, child: Image.asset(imgurl)),
              const SizedBox(height: 5),
              TextFW400(text: title, fontSize: 15)
            ]),
      ),
    );
  }
}
