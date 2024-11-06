import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  final List<Map<String, dynamic>> skills = [
    {'name': 'ReactJS', 'icon': Icons.ac_unit}, // Replace with correct icon
    {'name': 'ExpressJS', 'icon': Icons.extension}, // Replace with correct icon
    {'name': 'NodeJS', 'icon': Icons.nature}, // Replace with correct icon
    {'name': 'Redux', 'icon': Icons.redeem}, // Replace with correct icon
    {'name': 'Firebase', 'icon': Icons.fireplace},
    {'name': 'Android', 'icon': Icons.android},
    {'name': 'MaterialUI', 'icon': Icons.design_services}, // Replace with correct icon
    {'name': 'ChakraUI', 'icon': Icons.bolt}, // Replace with correct icon
    {'name': 'TailwindCSS', 'icon': Icons.color_lens}, // Replace with correct icon
    {'name': 'Bootstrap', 'icon': Icons.grid_view},
    {'name': 'Sass', 'icon': Icons.brush}, // Replace with correct icon
    {'name': 'HTML5', 'icon': Icons.html},
    {'name': 'CSS3', 'icon': Icons.css},
    {'name': 'JavaScript', 'icon': Icons.javascript},
    {'name': 'Java', 'icon': Icons.code},
    {'name': 'Kotlin', 'icon': Icons.extension},
    {'name': 'PHP', 'icon': Icons.phonelink}, // Replace with correct icon
    {'name': 'Python', 'icon': Icons.pets}, // Replace with correct icon
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      child: Card(
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Skills & Abilities',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6, // Number of columns
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 4.5 / 3, // Make boxes more compact
                ),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          skills[index]['icon'],
                          size: 28, // Smaller icon size
                          color: Colors.white,
                        ),
                        SizedBox(height: 6),
                        Text(
                          skills[index]['name'],
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
