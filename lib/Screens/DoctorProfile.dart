import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/ElevatedButton.dart';
import 'package:we_care/Utils/Constants.dart';

import '../Packages/CustomeTexts.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

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
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: MyColor.white,
                    )),
              ],
            ),
          ),
          CP(
            h: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Image.asset("assets/images/drAvtar1.png"),
                ),
                const SizedBox(width: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const TextFW700(
                            text: "Dr. Stacy Williams", fontSize: 20),
                        const SizedBox(height: 3),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.add_box_outlined,
                              size: 20,
                              color: MyColor.textColor1,
                            ),
                            const SizedBox(width: 5),
                            TextFW500(
                              text: "Sunshine Global Hospital",
                              fontSize: 14,
                              textcolor: MyColor.textColor1,
                              fontWeight: FontWeight.w600,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 18,
                              child: Image.asset("assets/icons/heart1.png"),
                            ),
                            const SizedBox(width: 7),
                            TextFW400(
                              text: "Heart Surgeon",
                              fontSize: 14,
                              textcolor: MyColor.textColor1,
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        TextFW700(
                          text: "\$35.00",
                          fontSize: 20,
                          textcolor: MyColor.themeColor,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          CP(
              h: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const ProfileContainer(
                      iconData: Icons.verified_outlined,
                      title: "12 Years",
                      subtitle: "Experience"),
                  Container(
                    height: 55,
                    width: 2,
                    color: MyColor.textColor4,
                  ),
                  const ProfileContainer(
                      iconData: Icons.person_outlined,
                      title: "450+",
                      subtitle: "Patient Treated"),
                  Container(
                    height: 55,
                    width: 2,
                    color: MyColor.textColor4,
                  ),
                  const ProfileContainer(
                      iconData: Icons.thumb_up_alt_outlined,
                      title: "96%",
                      subtitle: "Recommended"),
                ],
              )),
          const SizedBox(height: 24),
          CP(
              h: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextFW700(text: "About", fontSize: 18),
                  const SizedBox(height: 12),
                  TextFW400(
                    text:
                        "I’m 47 years old. Completed my education from The Johns Hopkins University School of Medicine. I was one of the bright student with all USA medial score over 85%.",
                    fontSize: 14,
                    textcolor: MyColor.textColor1,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const TextFW700(text: "Patient Reviews", fontSize: 18),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        // color: Colors.red,
                        height: 24,
                        width: 66,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  // spreadRadius: 10,
                                  blurRadius: 3,
                                  color: Colors.grey.shade300,
                                  offset: const Offset(-1, 1)),
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.shade300,
                                  offset: const Offset(1, -1)),
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.shade300,
                                  offset: const Offset(1, 1)),
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.shade300,
                                  offset: const Offset(-1, -1))
                            ],
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextFW700(text: "4.5", fontSize: 16),
                            Icon(
                              Icons.star,
                              color: MyColor.yellow,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
          const SizedBox(height: 20),
          CP(
              h: 16,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                        child: Image.asset("assets/images/drAvtar7.png"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFW500(
                                    text: "Mr. Steve James",
                                    fontSize: 14,
                                    textcolor: MyColor.textColor3),
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star_outline_outlined,
                                        color: MyColor.yellow,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  child: Image.asset("assets/icons/lock.png"),
                                ),
                                const SizedBox(width: 5),
                                TextFW400(
                                  text: "15 NOV",
                                  fontSize: 12,
                                  textcolor: MyColor.textColor1,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  TextFW400(
                    text:
                        "Doctor is very good at understanding the problem and treats you by doing only necessary tests and minimal medications.",
                    fontSize: 12,
                    textcolor: MyColor.textColor1,
                  )
                ],
              )),
          const SizedBox(height: 15),
          CP(
              h: 16,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 45,
                        child: Image.asset("assets/images/drAvtar2.png"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFW500(
                                    text: "Mrs. Meghan Merkle",
                                    fontSize: 14,
                                    textcolor: MyColor.textColor3),
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: MyColor.yellow,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 15,
                                  child: Image.asset("assets/icons/lock.png"),
                                ),
                                const SizedBox(width: 5),
                                TextFW400(
                                  text: "20 NOV",
                                  fontSize: 12,
                                  textcolor: MyColor.textColor1,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  TextFW400(
                    text:
                        "Treatment and diagnosis of issue in heart related problems is done by a well versatile veteran doctor",
                    fontSize: 12,
                    textcolor: MyColor.textColor1,
                  )
                ],
              )),
          Expanded(child: Container()),
          CP(
            v: 16,
            h: 16,
            child: CustomButton(
              radius: 4,
              onPress: () {},
              bgcolor: MyColor.themeColor,
              txtcolor: MyColor.white,
              height: 44,
              weight: FontWeight.w600,
              width: DP.infinity(context),
              label: "Book Appointment",
              icon: SizedBox(
                  height: 18, child: Image.asset("assets/icons/camera.png")),
              size: 16,
            ),
          ),
        ],
      )),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(iconData),
        const SizedBox(height: 5),
        TextFW700(text: title, fontSize: 18, textcolor: MyColor.themeColor),
        const SizedBox(height: 5),
        TextFW400(
          text: subtitle,
          fontSize: 12,
          textcolor: MyColor.textColor1,
        )
      ],
    );
  }
}
