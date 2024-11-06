import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 10),
              Text(
                "I am a passionate IT professional with expertise in mobile and backend development. With a strong foundation in Android development, I have crafted intuitive and high-performance applications that enhance user experience. My journey has also led me to explore Flutter and React Native, enabling me to build cross-platform applications that meet diverse client needs.In addition to my mobile development skills, I am proficient in backend technologies, particularly Node.js, which allows me to create robust server-side solutions. My experience in full-stack development enables me to bridge the gap between front-end and back-end systems, ensuring seamless integration and functionality.I thrive on challenges and am always eager to learn new technologies and methodologies to enhance my skill set. My goal is to create innovative and impactful applications that provide real value to users.",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
