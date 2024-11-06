// ignore_for_file: prefer_const_constructors

import 'package:ecocity/src/ui/theme/custom_colors.dart'; 
import 'package:ecocity/src/view/page_accounts.dart';
import 'package:ecocity/src/view/page_correct_disposal.dart';
import 'package:ecocity/src/view/page_create_account.dart';
import 'package:ecocity/src/view/page_home.dart';
import 'package:ecocity/src/view/page_login.dart';
import 'package:ecocity/src/view/page_recycling.dart';
import 'package:ecocity/src/view/page_schedule_collection.dart';
import 'package:ecocity/src/view/page_splashscreen.dart';
import 'package:ecocity/src/view/page_teste_map.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoCity',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        // ignore: deprecated_member_use
        //backgroundColor: CustomColors.primaryColor,
      ),
      routes: {
        Routes.splash: (context) => CustomAccounts(),
        Routes.map: (context) => TestMap(),
        Routes.login: (context) => CustomLogin(),
        Routes.logout: (context) => CustomLogin(),
        Routes.register: (context) => CustomRegister(),
        Routes.home: (context) => HomeScreen(),
        Routes.correctdisposal: (context) => CustomCorrectDisposal()
      },
      home: const CustomSplashscreen(),
    );
  }
}

class Routes {
  static String splash = "splash/";
  static String map = "map/";
  static String login = "login/";
  static String help = "duvidas/";
  static String logout = "sair/";
  static String home = "inicio/";
  static String register = "cadastro/";
  static String schedulecollection = "agendar/";
  static String correctdisposal = "descarte/";
}
