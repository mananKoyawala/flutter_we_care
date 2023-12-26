import 'package:flutter/material.dart';
import 'package:we_care/Utils/Constants.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key, this.searchTitle});
  final String? searchTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          autofocus: false,
          cursorColor: MyColor.textColor1,
          decoration: InputDecoration(
              suffixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  height: 5,
                  child: Image.asset("assets/icons/search.png")),
              filled: true,
              fillColor: MyColor.backgroundColor,
              focusColor: MyColor.backgroundColor,
              hintText: searchTitle ?? "Select with Customer Name & Mobile No",
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColor.backgroundColor),
                  borderRadius: BorderRadius.circular(10)),
              hintStyle: TextStyle(
                fontSize: 12,
                color: MyColor.textColor1,
                fontWeight: FontWeight.w400,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 15),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColor.backgroundColor),
                  borderRadius: BorderRadius.circular(10))),
        ),
        // const SizedBox(
        //   height: 10,
        // ),
      ],
    );
  }
}
