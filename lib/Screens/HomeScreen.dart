import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomePadding.dart';
import 'package:we_care/Packages/CustomeTexts.dart';
import 'package:we_care/Packages/RippleEffectContainer.dart';
import 'package:we_care/Screens/DoctorListScreen.dart';
import 'package:we_care/Utils/Constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../Controller/LanguageController.dart';
import '../Packages/SearchField.dart';
import 'AppointmentsScreen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final languageController = Get.find<LanguageController>();

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
                  SearchFeild(
                      searchTitle: AppLocalizations.of(context)!.searchText),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextFW500(
                        text: AppLocalizations.of(context)!.specializeDoctor,
                        fontSize: 18,
                        textcolor: MyColor.textColor2,
                        fontWeight: FontWeight.bold,
                      ),
                      IconButton(
                          onPressed: () {
                            languageController.changeLocale();
                          },
                          icon: const Icon(
                            Icons.change_circle,
                            size: 30,
                          ))
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeComponent(
                          onTap: () {},
                          title: AppLocalizations.of(context)!.ear,
                          imgurl: "assets/icons/ear.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: AppLocalizations.of(context)!.stomach,
                          imgurl: "assets/icons/stomach.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: AppLocalizations.of(context)!.kidney,
                          imgurl: "assets/icons/kidney.png",
                          height: 40,
                        ),
                        HomeComponent(
                          onTap: () {},
                          title: AppLocalizations.of(context)!.lungs,
                          imgurl: "assets/icons/lungs.png",
                          height: 40,
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeComponent(
                          onTap: () {},
                          title: AppLocalizations.of(context)!.bones,
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
                          title: AppLocalizations.of(context)!.heart,
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
