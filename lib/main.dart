import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'pages/overview_page.dart';
import 'pages/hr_page.dart';
import 'pages/marketing_page.dart';

void main() {
  runApp(const InsightaApp());
}

class InsightaApp extends StatelessWidget {
  const InsightaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insighta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF3F4F6),
        primaryColor: const Color(0xFF1A2138),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Segoe UI',
      ),
      home: const MainLayout(),
    );
  }
}

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const OverviewPage(),
    const HrRecruitmentPage(),
    const MarketingPage(),
    const Center(child: Text("Business Insights Placeholder")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 250,
            child: Sidebar(
              selectedIndex: _selectedIndex,
              onItemSelected: (index) => setState(() => _selectedIndex = index),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: _pages[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}