// ignore_for_file: prefer_const_constructors, unused_element

import 'package:ecocity/src/model/storage_helper.dart';
import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:ecocity/src/view/page_recycling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScheduleCollectionScreen extends StatefulWidget {
  const ScheduleCollectionScreen({super.key});

  @override
  State<ScheduleCollectionScreen> createState() =>
      _ScheduleCollectionScreenState();
}

class _ScheduleCollectionScreenState extends State<ScheduleCollectionScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  int _selectedIndex = 0;
  Future<void> _saveScheduledDate(DateTime date) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        'scheduledDate', '${date.year}-${date.month}-${date.day}');
  }

  Future<String?> _loadScheduledDate() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('scheduledDate');
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
              'Agende a sua coleta',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: CustomColors.highlightTextolor,
              ),
            ),
            const SizedBox(height: 20),
            TableCalendar(
              firstDay: DateTime.utc(2020, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: CustomColors.highlightTextolor,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: CustomColors.secondaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_selectedDay != null)
              Text(
                'Data selecionada: ${_selectedDay!.day}/${_selectedDay!.month}/${_selectedDay!.year}',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CustomColors.highlightTextolor,
                ),
              ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed:
                    _selectedDay != null ? _confirmSchedule : _showDateError,
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Agendar coleta',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmSchedule() {
    if (_selectedDay == null) return;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirmação de Agendamento',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          ),
          content: Text(
            'Você selecionou o dia ${_selectedDay!.day}/${_selectedDay!.month}/${_selectedDay!.year} para a coleta. Deseja confirmar?',
            style: GoogleFonts.poppins(),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancelar',
                style: GoogleFonts.poppins(color: CustomColors.primaryColor),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                saveScheduledDate(_selectedDay!);
                _showConfirmationPopup();
              },
              child: Text(
                'Confirmar',
                style: GoogleFonts.poppins(color: CustomColors.primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showDateError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Por favor, selecione uma data.',
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }

  void _showConfirmationPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Sucesso',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
          content: Text(
            'Sua coleta foi agendada com sucesso para o dia ${_selectedDay!.day}/${_selectedDay!.month}/${_selectedDay!.year}. Acesse em notificaçoes e acompanhe seu protocolo.',
            style: GoogleFonts.poppins(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Ok',
                style: GoogleFonts.poppins(color: CustomColors.primaryColor),
              ),
            ),
          ],
        );
      },
    );
  }

  void _navigateBottomBar(int index) {
    final screens = [CustomRecycling(), CustomRecycling(), CustomRecycling()];
    if (index < screens.length) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => screens[index],
      ));
    }
  }
}
