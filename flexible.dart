import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/Common/extension_textstyle.dart';
import 'package:ui/Common/sizedbox.dart';

import 'Common/color_helper.dart';
import 'Common/text_style.dart';

class FlexibleDemo extends StatelessWidget {
  const FlexibleDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 200,
                  color: kOrange,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: "data"
                        .addTextstyle(color: Colors.green, fontSize: 20.sp),
                  ),
                );
              },
            ),
          ),
          sH10,
          Container(
            height: 200,
            width: 200,
            color: kBlue,
          ),
        ],
      ),
    );
  }
}
