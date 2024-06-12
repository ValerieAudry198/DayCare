import 'package:flutter/material.dart';
import 'daily_report_screen.dart';
import 'views/input_widget.dart';
import 'views/login_page.dart';
import 'views/register_page.dart';

void main() {
  runApp(const DaycareApp());
}

class DaycareApp extends StatelessWidget {
  const DaycareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cita Harmony',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DailyReportScreen(),
    );
  }
}
