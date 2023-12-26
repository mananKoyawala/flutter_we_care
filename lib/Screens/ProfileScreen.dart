import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/RippleEffectContainer.dart';
import 'package:we_care/Packages/ScrollColorRemove.dart';

import '../Packages/CustomeTexts.dart';
import '../Utils/Constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: ScrollColorRemove(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: MyColor.white,
                alignment: Alignment.center,
                height: 56,
                width: DP.infinity(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFW400(
                      text: "1111",
                      fontSize: 14,
                      textcolor: MyColor.white,
                    ),
                    TextFW700(
                      text: "Profile",
                      fontSize: 22,
                      textcolor: MyColor.black,
                    ),
                    ClickEffect(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 25,
                          width: 40,
                          alignment: Alignment.center,
                          child: TextFW400(
                            text: "Edit",
                            fontSize: 16,
                            textcolor: MyColor.themeColor,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: 100,
                  child: Image.asset("assets/images/drAvtar2.png"),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: MyColor.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                width: 1, color: MyColor.textColor4)),
                        child: Column(
                          children: [
                            const ProfileScreenRow(
                              title: "First Name",
                              data: "Daisy",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Last Name",
                              data: "Johnson",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Date of Birth",
                              data: "25 Aug, 1981 (40)",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Sex",
                              data: "Female",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Blood Group",
                              data: "A+",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Height",
                              data: "167cm",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Weight",
                              data: "65kg",
                            ),
                            Divider(
                                color: MyColor.textColor4,
                                height: 1,
                                thickness: 1),
                            const ProfileScreenRow(
                              title: "Blood Group",
                              data: "A+",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreenRow extends StatelessWidget {
  const ProfileScreenRow({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return CP(
      v: 14,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFW400(
            text: title,
            fontSize: 14,
            textcolor: MyColor.textColor1,
          ),
          TextFW500(
            text: data,
            fontSize: 16,
            textcolor: MyColor.textColor3,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
