// ignore_for_file: prefer_const_constructors

import 'package:ecocity/src/ui/widgets/custom_appbar.dart';
import 'package:ecocity/src/ui/widgets/custom_navigationbar.dart';
import 'package:ecocity/src/ui/widgets/map.dart';
import 'package:flutter/material.dart';

class TestMap extends StatefulWidget {
  const TestMap({super.key});

  @override
  State<TestMap> createState() => _TestMap();
}

class _TestMap extends State<TestMap> {
  int _selectedIndex = 0;
  TextEditingController cepController = TextEditingController();
  final OsmImplemetation osmWidget = OsmImplemetation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: cepController,
                    decoration: InputDecoration(
                      hintText: 'Digite o CEP',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    osmWidget.findNearestLocation(cepController.text);
                  },
                  child: Text('Buscar'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: osmWidget,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
