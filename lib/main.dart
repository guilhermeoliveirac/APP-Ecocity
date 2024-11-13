// ignore_for_file: prefer_const_constructors, unused_import

import 'package:ecocity/src/model/supabase_db.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/view/page_accounts.dart';
import 'package:ecocity/src/view/page_certificates.dart';
import 'package:ecocity/src/view/page_correct_disposal.dart';
import 'package:ecocity/src/view/page_create_account.dart';
import 'package:ecocity/src/view/page_home.dart';
import 'package:ecocity/src/view/page_incentiva_program_ecocity.dart';
import 'package:ecocity/src/view/page_login.dart';
import 'package:ecocity/src/view/page_questions.dart';
import 'package:ecocity/src/view/page_recycling.dart';
import 'package:ecocity/src/view/page_seletive_collection.dart';
import 'package:ecocity/src/view/page_splashscreen.dart';
import 'package:ecocity/src/view/page_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SupabaseDb.init();
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
      ),
      routes: {
        Routes.splash: (context) => CustomAccounts(),
        Routes.map: (context) => TestMap(),
        Routes.login: (context) => CustomLogin(),
        Routes.logout: (context) => CustomLogin(),
        Routes.register: (context) => CustomRegister(),
        Routes.home: (context) => HomeScreen(),
        Routes.program: (context) => CustomProgramaEcocity(),
        Routes.certificates: (context) => CertificadoPage(
              nomeUsuario: 'Francielle Lima Lustosa',
            ),
        Routes.schedulecollection: (context) => ScheduleCollectionScreen(),
        Routes.recicle: (context) => CustomRecycling(),
        Routes.correctdisposal: (context) => CustomCorrectDisposal(),
        Routes.questions: (context) => QuestionarioPage(),
      },
      locale: const Locale("pt", "BR"),
      supportedLocales: const [
        Locale("pt"),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
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
  static String program = "programa/";
  static String certificates = "certificados/";
  static String recicle = "reciclagem/";
  static String questions = "questionário/";
}
