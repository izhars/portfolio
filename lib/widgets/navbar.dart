import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String selectedItem = "Home"; // Track the selected item

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavBar(
            selectedItem: selectedItem,
            onItemSelected: (item) {
              setState(() {
                selectedItem = item;
              });
            },
          );
        } else {
          return MobileNavBar(
            selectedItem: selectedItem,
            onItemSelected: (item) {
              setState(() {
                selectedItem = item;
              });
            },
          );
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  final String selectedItem;
  final Function(String) onItemSelected;

  DesktopNavBar({required this.selectedItem, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Sharique",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Myroge',
                ),
              ),
            ],
          ),
          Row(
            children: [
              NavBarItem("Home", selectedItem, onItemSelected),
              SizedBox(width: 20),
              NavBarItem("About", selectedItem, onItemSelected),
              SizedBox(width: 20),
              NavBarItem("Projects", selectedItem, onItemSelected),
              SizedBox(width: 20),
              NavBarItem("Contact", selectedItem, onItemSelected),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  final String selectedItem;
  final Function(String) onItemSelected;

  MobileNavBar({required this.selectedItem, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Sharique",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Myroge',
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // TODO: Add drawer or navigation logic
          },
        ),
      ],
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final String selectedItem;
  final Function(String) onItemSelected;

  NavBarItem(this.title, this.selectedItem, this.onItemSelected);

  @override
  Widget build(BuildContext context) {
    bool isSelected = title == selectedItem;

    return MouseRegion(
      onEnter: (_) {
        // Hover effect can be added here if needed
      },
      onExit: (_) {
        // Hover effect can be removed here if needed
      },
      child: GestureDetector(
        onTap: () {
          onItemSelected(title); // Update the selected item on tap
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(20), // Make the corners more rounded
            boxShadow: isSelected
                ? [BoxShadow(color: Colors.blue.withOpacity(0.2), blurRadius: 10, offset: Offset(0, 5))]
                : [],
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: isSelected ? Colors.blue : Colors.black, // Change color when selected
              ),
            ),
          ),
        ),
      ),
    );
  }
}
