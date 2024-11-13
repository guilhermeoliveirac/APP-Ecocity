// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:ecocity/main.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionarioPage extends StatefulWidget {
  const QuestionarioPage({super.key});

  @override
  State<QuestionarioPage> createState() => _QuestionarioPageState();
}

class _QuestionarioPageState extends State<QuestionarioPage> {
  final List<Map<String, dynamic>> perguntas = [
    {
      "pergunta": "Qual é o objetivo do programa Ecocity?",
      "alternativas": [
        "a) Promover o ecoturismo",
        "b) Reduzir a poluição",
        "c) Conservar a biodiversidade"
      ],
      "respostaCorreta": 1,
    },
    {
      "pergunta": "Como a sustentabilidade impacta a mobilidade urbana?",
      "alternativas": [
        "a) Diminui o trânsito",
        "b) Reduz a emissão de CO₂",
        "c) Aumenta o consumo de energia"
      ],
      "respostaCorreta": 1,
    },
  ];

  int pontuacao = 0;
  final Map<int, int> respostasSelecionadas = {};

  void _submitQuiz() {
    pontuacao = 0;

    for (int i = 0; i < perguntas.length; i++) {
      if (respostasSelecionadas[i] == perguntas[i]["respostaCorreta"]) {
        pontuacao++;
      }
    }

    if (pontuacao >= perguntas.length * 0.7) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Parabéns! Você foi aprovado."),
          content: Text("Seu certificado foi gerado."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  Routes.certificates,
                );
              },
              child: Text("Acessar meu certificado",
                  style: GoogleFonts.poppins(color: CustomColors.primaryColor)),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Ops, você não passou!"),
          content: Text("Tente novamente e gere seu certificado!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("ok",
                  style: GoogleFonts.poppins(color: CustomColors.primaryColor)),
            ),
          ],
        ),
      );
    }
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Responda as perguntas abaixo:",
                style: GoogleFonts.poppins(
                  color: CustomColors.highlightTextolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: perguntas.length,
                itemBuilder: (context, index) {
                  final pergunta = perguntas[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pergunta["pergunta"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Column(
                        children: List.generate(pergunta["alternativas"].length,
                            (altIndex) {
                          return RadioListTile<int>(
                            title: Text(pergunta["alternativas"][altIndex]),
                            value: altIndex,
                            groupValue: respostasSelecionadas[index],
                            onChanged: (value) {
                              setState(() {
                                respostasSelecionadas[index] = value!;
                              });
                            },
                          );
                        }),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(CustomColors.primaryColor),
                ),
                onPressed: _submitQuiz,
                child: Text(
                  "Enviar",
                  style: TextStyle(
                    color: CustomColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
