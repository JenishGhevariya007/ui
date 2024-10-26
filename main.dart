import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/dinihari/first_screen.dart';
import 'package:ui/show_modal_bottom_sheet.dart';
import 'package:ui/statefull_button.dart';
import 'package:ui/text_form_field.dart';
import 'package:ui/text_gradient.dart';
import 'package:ui/whatsapp/appbar.dart';

import 'package:ui/whatsapp/chat_screen.dart';
import 'package:ui/whatsapp/updates_screen.dart';

import 'Fruit/bottom_navi_fruit.dart';
import 'Fruit/shopping_screen.dart';
import 'TheKitchen/home_screen_kit.dart';
import 'cignifi/login_screen.dart';
import 'cignifi/signup_screen.dart';
import 'cignifi/splash_screen.dart';
import 'drawer.dart';
import 'drop_down_button.dart';
import 'flexible.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DrawerDemo(),
        );
      },
    );
  }
}
