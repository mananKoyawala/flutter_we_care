import 'package:flutter/material.dart';
import 'package:we_care/Packages/CustomeTexts.dart';
import 'package:we_care/Packages/Margine.dart';
import 'package:we_care/Packages/RippleEffectContainer.dart';
import 'package:we_care/Packages/ScrollColorRemove.dart';
import 'package:we_care/Utils/Constants.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SafeArea(
        child: ScrollColorRemove(
          child: Column(
            children: [
              Container(
                color: MyColor.white,
                alignment: Alignment.center,
                height: 56,
                width: DP.infinity(context),
                child: TextFW700(
                  text: "Appointments",
                  fontSize: 22,
                  textcolor: MyColor.black,
                ),
              ),
              // Expanded(
              //   child: ListView.builder(
              //       itemCount: 10,
              //       shrinkWrap: true,
              //       physics: const BouncingScrollPhysics(),
              //       itemBuilder: (context, builder) {
              //         return const AppoinmentRow(
              //             title: "Dr. Stacy Williams",
              //             imgurl: "assets/images/drAvtar1.png",
              //             date: "14 Dec, 2021",
              //             time: "10:00 AM");
              //       }),
              // )
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    AppoinmentRow(
                        title: "Dr. Stacy Williams",
                        imgurl: "assets/images/drAvtar1.png",
                        date: "14 Dec, 2021",
                        time: "10:00 AM"),
                    AppoinmentRow(
                        title: "Dr. Andrew Scottish",
                        imgurl: "assets/images/drAvtar4.png",
                        date: "29 Jun, 2022",
                        time: "01:00 PM"),
                    AppoinmentRow(
                        title: "Dr. Michelle Jokovich",
                        imgurl: "assets/images/drAvtar6.png",
                        date: "03 Mar, 2022",
                        time: "05:00 PM"),
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

class AppoinmentRow extends StatelessWidget {
  const AppoinmentRow({
    Key? key,
    required this.imgurl,
    required this.title,
    required this.date,
    required this.time,
    this.backgroundColor,
  }) : super(key: key);
  final String imgurl;
  final String title;
  final String date;
  final String time;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Margine(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: ClickEffect(
        onTap: () {},
        borderRadius: BorderRadius.circular(4),
        child: Container(
          // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          decoration: BoxDecoration(
              color: backgroundColor ?? MyColor.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: MyColor.blackO1)),
          child: Row(
            children: [
              SizedBox(
                height: 50,
                child: Image.asset(imgurl),
              ),
              const SizedBox(width: 10),
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
                        Icons.date_range,
                        size: 20,
                        color: MyColor.textColor1,
                      ),
                      const SizedBox(width: 5),
                      TextFW400(
                        text: time,
                        fontSize: 12,
                        textcolor: MyColor.textColor3,
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 20,
                        child: Image.asset("assets/icons/lock.png"),
                      ),
                      const SizedBox(width: 5),
                      TextFW400(
                        text: date,
                        fontSize: 12,
                        textcolor: MyColor.textColor3,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
