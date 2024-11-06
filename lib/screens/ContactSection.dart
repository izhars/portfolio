import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue.shade50, Colors.blue.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get in Touch",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey.shade900,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "I'd love to hear from you! Feel free to reach out for collaborations or just to say hello.",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blueGrey.shade700,
            ),
          ),
          SizedBox(height: 30),

          // Row to display image on the left and form fields on the right
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image inside a Card on the left side
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/contact_bg.jpg', // Replace with your image path
                      width: double.infinity,
                      height: 370,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 20), // Add some space between the image and the form fields

              // Form fields on the right side wrapped in a Card
              Expanded(
                flex: 2,
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTextField("Name"),
                        SizedBox(height: 20),
                        _buildTextField("Email"),
                        SizedBox(height: 20),
                        _buildTextField("Message", maxLines: 4),
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add submission logic here
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor: Colors.blueAccent,
                              shadowColor: Colors.blueAccent.withOpacity(0.3),
                              elevation: 10,
                            ),
                            child: Text(
                              "Send Message",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Social icons can still be added here
          Center(
            child: Wrap(
              spacing: 20,
              children: [
                _buildSocialIcon('assets/icons/location.png'),
                _buildSocialIcon('assets/icons/call.png'),
                _buildSocialIcon('assets/icons/email.png'),
                _buildSocialIcon('assets/icons/website.png'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(thickness: 1, color: Colors.grey[300]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Designed with ",
                style: TextStyle(color: Colors.grey[600]),
              ),
              Icon(Icons.favorite, color: Colors.red, size: 16),
              Text(
                " by Sharique",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        labelStyle: TextStyle(color: Colors.blueGrey.shade700),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueGrey.withOpacity(0.1),
      ),
      child: Image.asset(
        assetPath,
        width: 30,
        height: 30,
        fit: BoxFit.contain,
      ),
    );
  }
}
