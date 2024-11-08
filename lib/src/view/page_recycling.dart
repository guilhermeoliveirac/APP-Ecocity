// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRecycling extends StatefulWidget {
  const CustomRecycling({super.key});

  @override
  State<CustomRecycling> createState() => _CustomRecyclingState();
}

class _CustomRecyclingState extends State<CustomRecycling> {
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
                'Saiba como realizar a reciclagem',
                style: GoogleFonts.poppins(
                  color: CustomColors.highlightTextolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
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
                      'A reciclagem é uma prática essencial para a preservação do meio ambiente e a construção de um futuro mais sustentável. Ao reciclarmos materiais como plástico, papel, vidro e metal, podemos reduzir a quantidade de resíduos enviados para aterros sanitários e poupar recursos naturais preciosos.',
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
                      'Passo a passo de como realizar a reciclagem:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Passo 1: Conheça os Materiais Recicláveis:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Antes de começar a reciclar, é importante conhecer os materiais que podem ser reciclados. Isso inclui plástico, papel, vidro, metal e alguns tipos específicos de resíduos eletrônicos.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Passo 2: Separe os Materiais Recicláveis:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Separe os materiais recicláveis dos resíduos comuns. Use recipientes separados para cada tipo de material, se possível. Isso facilitará o processo de reciclagem posteriormente.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Passo 3: Limpe os Materiais Recicláveis:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Antes de descartar os materiais recicláveis, certifique-se de que estejam limpos e livres de qualquer resíduo. Isso ajuda a evitar a contaminação dos materiais durante o processo de reciclagem.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Passo 4: Identifique os Pontos de Coleta ou Reciclagem:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Pesquise os pontos de coleta ou reciclagem na sua comunidade. Isso pode incluir centros de reciclagem locais, pontos de coleta em supermercados ou locais de descarte específicos para certos materiais, como pilhas e baterias.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Passo 5: Entregue os Materiais Recicláveis:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Leve os materiais recicláveis aos pontos de coleta ou reciclagem mais próximos de você. Certifique-se de seguir as instruções fornecidas pelos locais de reciclagem, como separar os materiais por tipo ou seguir horários específicos de funcionamento.\n",
                      style: TextStyle(
                        fontSize: 14,
                        color: CustomColors.highlightTextolor,
                      ),
                    ),
                    Text(
                      "Passo 6: Contribua Continuamente:",
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    Text(
                      "Mantenha o hábito de separar e reciclar seus materiais regularmente. Ao fazer da reciclagem uma parte rotineira do seu dia a dia, você estará contribuindo para a preservação do meio ambiente e para a economia de recursos naturais.\n",
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
