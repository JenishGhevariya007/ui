import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/Common/color_helper.dart';
import 'package:ui/Common/text_field.dart';

import 'Common/button.dart';
import 'Common/sizedbox.dart';
import 'Common/text_style.dart';

class UseCommonWidget extends StatelessWidget {
  const UseCommonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CommonTextField(
              hintText: "Search for drungs",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.teal,
              ),
              obsecure: false,
            ),
            sH10,
            const CommonTextField(
              prefixIcon: Icon(
                Icons.ice_skating,
                color: Colors.green,
              ),
              suffixIcon: Icon(
                Icons.ice_skating,
                color: Colors.green,
              ),
              hintText: "Name",
              obsecure: false,
            ),
            sH10,
            const CommonTextField(
              hintText: "password",
              obsecure: false,
            ),
            sH10,
            const CommonTextField(
              hintText: "confirm password",
              obsecure: false,
            ),
            sH10,
            const CommonTextField(
              hintText: "confirm",
              obsecure: false,
            ),
            sH10,
            ButtonCommon(
              child: Text(
                "jenish",
                style: kGreen20bold,
              ),
              onpressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
