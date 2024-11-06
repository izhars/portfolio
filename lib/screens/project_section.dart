import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProjectSection extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      "title": "E-commerce App",
      "description": "A cool project that involves teamwork and innovation.",
      "image": "https://m.media-amazon.com/images/G/31/amazonservices/Blog/What_is_an_E-commerce_business.jpg"
    },
    {
      "title": "Expense Tracker App",
      "description": "Expensify is another app that makes it easy to scan receipts and capture expense data. Plus, its pricing is more affordable than other options.",
      "image": "https://images.squarespace-cdn.com/content/v1/577c006b725e25e0affed0c1/5ca88cf4-8bb8-491a-bdbd-b09455ac68dd/hero_startups.png"
    },
    {
      "title": "Travel App",
      "description": "An app to plan your next vacation, with destination guides and booking features.",
      "image": "https://cdn.create.microsoft.com/catalog-assets/en-us/00005288-0018-0000-24ee-5b6db028c9ab/thumbnails/1200/city-explorer-brown-modern-simple-2-0c38c5ab6a5b.webp"
    },
    {
      "title": "Fitness Tracker",
      "description": "Track your workouts, nutrition, and progress to stay fit.",
      "image": "https://plus.unsplash.com/premium_photo-1681433383783-661b519b154a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zml0bmVzcyUyMHRyYWNrZXJ8ZW58MHx8MHx8fDA%3D"
    },
    {
      "title": "Recipe Finder",
      "description": "Find delicious recipes based on the ingredients you have at home.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTV2U0Xt-JmUMrJ-i2JD1fLLhqYuFcUD5Vcg&s"
    },
    {
      "title": "Mental Health App",
      "description": "A platform to track mood, manage stress, and practice mindfulness.",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-vMOinoXW6IpXwW8w7JSjMtuRfE8b-3JNSg&s"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: projects.map((project) {
              return ProjectCard(
                title: project['title']!,
                description: project['description']!,
                image: project['image']!, githubUrl: '',
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}


class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final String githubUrl; // GitHub URL for the source code

  ProjectCard({
    required this.title,
    required this.description,
    required this.image,
    required this.githubUrl,
  });

  @override
  _ProjectCardState createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: _isHovered ? 12 : 8, // Elevation change on hover
        shadowColor: _isHovered ? Colors.blueAccent : Colors.black38, // Shadow color change on hover
        child: Container(
          width: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: CachedNetworkImage(
                  imageUrl: widget.image,
                  fit: BoxFit.cover,
                  height: 180,
                  width: double.infinity,
                  placeholder: (context, url) => Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      widget.description,
                      style: TextStyle(color: Colors.grey[700]),
                      maxLines: 2, // Limit to 2 lines
                      overflow: TextOverflow.ellipsis, // Add ellipsis for overflow text
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Ensure max space between the widgets
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Add functionality, e.g., open project details
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                              "Learn More",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        IconButton(
                          icon: Image.asset(
                              'assets/icons/github.png',
                              width: 24,
                              height: 24
                          ), // Custom GitHub Icon
                          onPressed: () {
                            // Open the GitHub link
                            _launchURL(widget.githubUrl);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to open the GitHub URL
  void _launchURL(String url) {
    // If you are using the `url_launcher` package, you can launch the URL
    // For example:
    // launch(url);
    print("Launching GitHub URL: $url");
    // Replace with actual logic to open the URL (e.g., using `url_launcher` package)
  }
}