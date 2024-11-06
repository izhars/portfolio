import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/ContactSection.dart';
import 'package:my_portfolio/screens/SkillsSection.dart';
import 'package:my_portfolio/screens/about_section.dart';
import 'package:my_portfolio/screens/header_section.dart';
import 'package:my_portfolio/screens/project_section.dart';
import '../widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            AboutSection(),
            ProjectSection(),
            SkillsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
