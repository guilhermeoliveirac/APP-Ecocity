// ignore_for_file: avoid_unnecessary_containers

import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';

class CustomCertificates extends StatefulWidget {
  const CustomCertificates({super.key});

  @override
  State<CustomCertificates> createState() => _CustomCertificatesState();
}

class _CustomCertificatesState extends State<CustomCertificates> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Center(
        child: Container(
          child: Image.asset(
            "assets/images/certificado.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
