// ignore_for_file: prefer_const_constructors

import 'package:ecocity/src/model/storage_helper.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<String>? _scheduledDates;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _fetchScheduledDates();
  }

  Future<void> _fetchScheduledDates() async {
    List<String>? dates = await loadScheduledDates();
    setState(() {
      _scheduledDates = dates;
    });
  }

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
            Text(
              'Agendamentos realizados',
              style: GoogleFonts.poppins(
                color: CustomColors.highlightTextolor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            _scheduledDates != null && _scheduledDates!.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: _scheduledDates!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          'Agendamento: ${_scheduledDates![index]}',
                          style: TextStyle(
                              fontSize: 16, color: CustomColors.primaryColor),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      'Nenhum agendamento marcado',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
