// // ignore_for_file: prefer_const_constructors, avoid_print

// import 'package:ecocity/main.dart';
// import 'package:ecocity/src/ui/theme/custom_colors.dart';
// import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
// import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';

// class CustomProgramaEcocity extends StatefulWidget {
//   const CustomProgramaEcocity({super.key});

//   @override
//   State<CustomProgramaEcocity> createState() => _CustomProgramaEcocityState();
// }

// class _CustomProgramaEcocityState extends State<CustomProgramaEcocity> {
//   int _selectedIndex = 0;
//   final int totalAulas = 20;
//   int aulasFeitas = 0;

//   final List<Map<String, dynamic>> videos = [
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//     {
//       "title": "Trilha Explorando a Natureza Local",
//       "description": "Acesse o vídeo",
//       "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
//       "isRead": false,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     double progresso = aulasFeitas / totalAulas;

//     return Scaffold(
//       appBar: CustomAppBar(),
//       bottomNavigationBar: CustomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Programa incentiva Ecocity",
//                     style: GoogleFonts.poppins(
//                       color: CustomColors.highlightTextolor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     elevation: 4,
//                     child: Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         children: [
//                           Text(
//                             'Meu painel de estudos',
//                             style: GoogleFonts.poppins(
//                               color: CustomColors.highlightTextolor,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           Stack(
//                             alignment: Alignment.center,
//                             children: [
//                               SizedBox(
//                                 width: constraints.maxWidth * 0.5,
//                                 height: constraints.maxWidth * 0.5,
//                                 child: CircularProgressIndicator(
//                                   value: progresso,
//                                   strokeWidth: 40,
//                                   backgroundColor: Colors.grey[300],
//                                   valueColor: AlwaysStoppedAnimation(
//                                       CustomColors.primaryColor),
//                                 ),
//                               ),
//                               Text(
//                                 "${(progresso * 100).toStringAsFixed(0)}%",
//                                 style:
//                                     Theme.of(context).textTheme.headlineMedium,
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 30),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text("Realizados: $aulasFeitas"),
//                               SizedBox(width: 20),
//                               Text(
//                                   "Não realizados: ${totalAulas - aulasFeitas}"),
//                             ],
//                           ),
//                           const SizedBox(height: 20),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context)
//                                       .pushNamed(Routes.certificates);
//                                 },
//                                 child: Text(
//                                   "Acessar meus certificados",
//                                   style: TextStyle(
//                                       color: CustomColors.primaryColor),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   Text(
//                     'Trilhas',
//                     style: GoogleFonts.poppins(
//                       color: CustomColors.highlightTextolor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     itemCount: videos.length,
//                     itemBuilder: (context, index) {
//                       final video = videos[index];

//                       return Card(
//                         margin: const EdgeInsets.symmetric(vertical: 8),
//                         child: ListTile(
//                           title: Text(video["title"]),
//                           subtitle: Text(video["description"]),
//                           trailing: Icon(
//                             video["isRead"]
//                                 ? Icons.check_circle
//                                 : Icons.play_arrow,
//                             color: video["isRead"]
//                                 ? CustomColors.primaryColor
//                                 : Colors.grey,
//                           ),
//                           onTap: () async {
//                             final url = video["url"];
//                             if (url != null) {
//                               final Uri uri = Uri.parse(url);

//                               if (await canLaunchUrl(uri)) {
//                                 await launchUrl(uri,
//                                     mode: LaunchMode.externalApplication);
//                                 if (!video["isRead"]) {
//                                   setState(() {
//                                     video["isRead"] = true;
//                                     aulasFeitas++;
//                                   });
//                                 }
//                               } else {
//                                 print("Could not launch $url");
//                               }
//                             }
//                           },
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:ecocity/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';

class CustomProgramaEcocity extends StatefulWidget {
  const CustomProgramaEcocity({super.key});

  @override
  State<CustomProgramaEcocity> createState() => _CustomProgramaEcocityState();
}

class _CustomProgramaEcocityState extends State<CustomProgramaEcocity> {
  int _selectedIndex = 0;
  final int totalAulas = 3;
  int aulasFeitas = 0;

  final List<Map<String, dynamic>> videos = List.generate(3, (index) {
    return {
      "title": "Trilha Explorando a Natureza Local ${index + 1}",
      "description": "Acesse o vídeo",
      "url": "https://www.youtube.com/watch?v=M-2eAiU09qg",
      "isRead": false,
    };
  });

  bool get allAulasAssistidas => aulasFeitas == totalAulas;

  @override
  Widget build(BuildContext context) {
    double progresso = aulasFeitas / totalAulas;

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Programa incentiva Ecocity",
                    style: GoogleFonts.poppins(
                      color: CustomColors.highlightTextolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Meu painel de estudos',
                            style: GoogleFonts.poppins(
                              color: CustomColors.highlightTextolor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.5,
                                height: constraints.maxWidth * 0.5,
                                child: CircularProgressIndicator(
                                  value: progresso,
                                  strokeWidth: 40,
                                  backgroundColor: Colors.grey[300],
                                  valueColor: AlwaysStoppedAnimation(
                                      CustomColors.primaryColor),
                                ),
                              ),
                              Text(
                                "${(progresso * 100).toStringAsFixed(0)}%",
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Realizados: $aulasFeitas"),
                              SizedBox(width: 20),
                              Text(
                                  "Não realizados: ${totalAulas - aulasFeitas}"),
                            ],
                          ),
                          const SizedBox(height: 20),
                          if (allAulasAssistidas)
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed(Routes.questions);
                              },
                              child: Text(
                                "Acessar o questionário",
                                style:
                                    TextStyle(color: CustomColors.primaryColor),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Trilhas',
                    style: GoogleFonts.poppins(
                      color: CustomColors.highlightTextolor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      final video = videos[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(video["title"]),
                          subtitle: Text(video["description"]),
                          trailing: Icon(
                            video["isRead"]
                                ? Icons.check_circle
                                : Icons.play_arrow,
                            color: video["isRead"]
                                ? CustomColors.primaryColor
                                : Colors.grey,
                          ),
                          onTap: () async {
                            final url = video["url"];
                            if (url != null) {
                              final Uri uri = Uri.parse(url);

                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri,
                                    mode: LaunchMode.externalApplication);
                                if (!video["isRead"]) {
                                  setState(() {
                                    video["isRead"] = true;
                                    aulasFeitas++;
                                  });
                                }
                              } else {
                                print("Could not launch $url");
                              }
                            }
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
