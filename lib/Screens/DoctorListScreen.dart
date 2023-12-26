import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/RippleEffectContainer.dart';
import 'package:we_care/Screens/DoctorProfile.dart';

import '../Packages/CustomeTexts.dart';
import '../Utils/Constants.dart';

class DoctorListScreen extends StatelessWidget {
  const DoctorListScreen({super.key});

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
                    text: "Heart Surgeons",
                    fontSize: 24,
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
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  DoctorList(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const DoctorProfileScreen()));
                      },
                      title: "Dr. Stacy Williams",
                      imgurl: "assets/images/drAvtar1.png",
                      hospitalname: "Sunshine Global Hospital",
                      specialist: "Heart Surgeon",
                      rating: "4.5",
                      like: "96%",
                      price: "\$35.00"),
                  DoctorList(
                      onTap: () {},
                      title: "Dr. Jacob Will Sampsons",
                      imgurl: "assets/images/drAvtar3.png",
                      hospitalname: "Saint Francis Memorial Centre",
                      specialist: "Heart Surgeon",
                      rating: "4.5",
                      like: "96%",
                      price: "\$30.00"),
                  DoctorList(
                      onTap: () {},
                      title: "Dr. Andrew Scottish",
                      imgurl: "assets/images/drAvtar4.png",
                      hospitalname: "Expresscare Medical Clinic",
                      specialist: "Heart Surgeon",
                      rating: "4.5",
                      like: "96%",
                      price: "\$25.00"),
                  DoctorList(
                      onTap: () {},
                      title: "Dr. Alexandra Williams",
                      imgurl: "assets/images/drAvtar5.png",
                      hospitalname: "Indigo Integrative Health Clinic",
                      specialist: "Heart Surgeon",
                      rating: "4.5",
                      like: "96%",
                      price: "\$32.00"),
                  DoctorList(
                      onTap: () {},
                      title: "Dr. Michelle Jokovich",
                      imgurl: "assets/images/drAvtar6.png",
                      hospitalname: "Sunshine Global Hospital",
                      specialist: "Heart Surgeon",
                      rating: "4.5",
                      like: "96%",
                      price: "\$45.00"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class DoctorList extends StatelessWidget {
  const DoctorList({
    Key? key,
    required this.imgurl,
    required this.title,
    required this.hospitalname,
    required this.specialist,
    required this.rating,
    required this.like,
    required this.price,
    required this.onTap,
  }) : super(key: key);
  final String imgurl;
  final String title;
  final String hospitalname;
  final String specialist;
  final String rating;
  final String like;
  final String price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CP(
      h: 16,
      child: ClickEffect(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65,
                child: Image.asset(imgurl),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFW700(text: title, fontSize: 16),
                        const SizedBox(height: 3),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_box_outlined,
                              size: 20,
                              color: MyColor.textColor1,
                            ),
                            const SizedBox(width: 5),
                            TextFW500(
                              text: hospitalname,
                              fontSize: 12,
                              textcolor: MyColor.textColor1,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                              child: Image.asset("assets/icons/heart1.png"),
                            ),
                            const SizedBox(width: 5),
                            TextFW400(
                              text: specialist,
                              fontSize: 12,
                              textcolor: MyColor.textColor1,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                              color: MyColor.yellow,
                            ),
                            const SizedBox(width: 5),
                            TextFW400(
                              text: rating,
                              fontSize: 12,
                              textcolor: MyColor.textColor1,
                            ),
                            const SizedBox(width: 15),
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 20,
                              color: MyColor.textColor1,
                            ),
                            const SizedBox(width: 5),
                            TextFW400(
                              text: like,
                              fontSize: 12,
                              textcolor: MyColor.textColor1,
                            ),
                          ],
                        )
                      ],
                    ),
                    TextFW700(
                      text: price,
                      fontSize: 16,
                      textcolor: MyColor.themeColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
