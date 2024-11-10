// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCorrectDisposal extends StatefulWidget {
  const CustomCorrectDisposal({super.key});

  @override
  State<CustomCorrectDisposal> createState() => _CustomCorrectDisposalState();
}

class _CustomCorrectDisposalState extends State<CustomCorrectDisposal> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saiba como descartar corretamente',
                style: GoogleFonts.poppins(
                  color: CustomColors.highlightTextolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.cards_information,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Por que o descarte correto é importante?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'O descarte inadequado de resíduos pode resultar em danos significativos ao meio ambiente, incluindo a contaminação do solo, da água e do ar.\n'
                      'Materiais como plásticos, produtos químicos e eletrônicos podem persistir no ambiente por anos, causando danos irreparáveis à vida selvagem e à saúde humana.',
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.cards_information,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tipos de resíduos e como descartá-los:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Resíduos Orgânicos:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Restos de alimentos, folhas, e outros materiais orgânicos podem ser compostados em casa ou depositados em composteiras comunitárias. Isso reduz a quantidade de lixo enviado para aterros sanitários e produz adubo natural.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Plásticos:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Recipientes de plástico devem ser limpos e separados de outros materiais recicláveis. Identificar os códigos de reciclagem facilita a separação correta dos tipos de plástico.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Papéis e Papelão:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Devem ser separados de outros materiais e colocados em recipientes designados para reciclagem. Evite misturar papéis contaminados com alimentos ou líquidos.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Vidro:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Recipientes de vidro devem ser enxaguados e depositados em recipientes de reciclagem de vidro. Evite misturar vidros quebrados com outros materiais recicláveis.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Eletrônicos:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Equipamentos eletrônicos devem ser descartados em locais apropriados, como pontos de coleta ou programas de reciclagem. Isso evita a contaminação por metais pesados e produtos químicos nocivos.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Produtos Químicos:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Pilhas, baterias e produtos químicos domésticos devem ser descartados em locais específicos, como pontos de coleta de materiais perigosos. Nunca descarte produtos químicos em lixo comum.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
