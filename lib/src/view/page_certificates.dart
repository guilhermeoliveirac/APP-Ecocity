// ignore_for_file: prefer_const_constructors

import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';

class CertificadoPage extends StatefulWidget {
  final String nomeUsuario;

  const CertificadoPage({super.key, required this.nomeUsuario});

  @override
  State<CertificadoPage> createState() => _CertificadoPageState();
}

class _CertificadoPageState extends State<CertificadoPage> {
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
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
            border: Border.all(color: CustomColors.primaryColor, width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Certificado de Conclusão",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.primaryColor,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Certificamos que",
                style: TextStyle(
                  fontSize: 16,
                  color: CustomColors.highlightTextolor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                widget.nomeUsuario,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.primaryColor,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "concluiu com êxito o programa de sustentabilidade do Ecocity.",
                style: TextStyle(
                    fontSize: 16, color: CustomColors.highlightTextolor),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 32),
              Text(
                "Palmas, Tocantins",
                style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: CustomColors.highlightTextolor),
              ),
              SizedBox(height: 4),
              Text(
                "Data de conclusão: ${DateTime.now().toLocal().toString().split(' ')[0]}",
                style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: CustomColors.highlightTextolor),
              ),
              SizedBox(height: 32),
              Divider(color: Colors.grey),
              SizedBox(height: 16),
              Text(
                "Equipe Ecocity",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.highlightTextolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
