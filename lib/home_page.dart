import 'package:flutter/material.dart';
import 'package:kibabii_rent/constants.dart';
import './components/device_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      // Add user profile image here
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/images/64GB.jpg'),
                      // You can use an Image.asset or Image.network to display the profile image
                      // Example:
                      // backgroundImage: AssetImage('assets/profile_image.png'),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'User Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'user@example.kibu.ac.ke',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Handle home functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.feed),
              title: const Text('Feed'),
              onTap: () {
                // Handle feed functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Account'),
              onTap: () {
                // Handle account functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help'),
              onTap: () {
                // Handle help functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                // Handle search functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                // Handle logout functionality here
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(kPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DeviceCard(name: "64 gb flash drive", imageURL: 'assets/images/64GB.jpg', price: 'KSH 500'),
                DeviceCard(name: "Fine Wrist watch", imageURL: "assets/images/wrist watch gold.jpg", price: "KSH 2000"),
              ],
            )
          ]
        ),
      ),
    );
  }
}
