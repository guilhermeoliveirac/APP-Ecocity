// ignore_for_file: prefer_const_constructors

import 'package:ecocity/src/ui/theme/custom_colors.dart';
import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/view/page_recycling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';


class ScheduleCollectionScreen extends StatefulWidget {
  const ScheduleCollectionScreen({super.key});

  @override
  State<ScheduleCollectionScreen> createState() => _ScheduleCollectionScreenState();
}

class _ScheduleCollectionScreenState extends State<ScheduleCollectionScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Agende a sua coleta',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
            ElevatedButton(
              onPressed: _selectedDay != null ? _confirmSchedule : _showDateError,
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColors.highlightTextolor,
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Agendar coleta',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Dúvidas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Sair',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: CustomColors.highlightTextolor,
        onTap: (index) => _navigateBottomBar(index),
      ),
    );
  }

  void _confirmSchedule() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirmação de Agendamento',
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
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
                style: GoogleFonts.poppins(color: CustomColors.secondaryColor),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showConfirmationScreen();
              },
              child: Text(
                'Confirmar',
                style: GoogleFonts.poppins(color: CustomColors.secondaryColor),
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

  void _showConfirmationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConfirmationScreen(),
      ),
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

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sua coleta foi agendada com sucesso!',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.highlightTextolor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const CustomRecycling(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.highlightTextolor,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Voltar para o início',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
