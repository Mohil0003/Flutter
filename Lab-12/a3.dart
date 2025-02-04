import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DateFormatDemo(),
    );
  }
}

class DateFormatDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    List<Map<String, String>> dateFormats = [
      {'format': 'dd/MM/yyyy', 'value': DateFormat('dd/MM/yyyy').format(currentDate)},
      {'format': 'dd-MM-yyyy', 'value': DateFormat('dd-MM-yyyy').format(currentDate)},
      {'format': 'dd-MMM-yyyy', 'value': DateFormat('dd-MMM-yyyy').format(currentDate)},
      {'format': 'dd-MM-yy', 'value': DateFormat('dd-MM-yy').format(currentDate)},
      {'format': 'dd MMM, yyyy', 'value': DateFormat('dd MMM, yyyy').format(currentDate)},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Date Format Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Date in Different Formats:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ...dateFormats.map(
                  (dateFormat) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      dateFormat['format']!,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 10),
                    Text(
                      dateFormat['value']!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}