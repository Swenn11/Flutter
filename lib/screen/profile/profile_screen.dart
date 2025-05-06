import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Header with background image and profile
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/profile_background_image.png',
                ), // Background image
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Profile
                Positioned(
                  top: 120,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                          ),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/profile_pubg.png',
                            ),
                          ),
                        ),
                        // Camera Icon inside the profile picture
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color.fromARGB(
                              255,
                              86,
                              50,
                              134,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 20,
                              ),
                              onPressed: () {
                                // Add camera functionality here
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Content section
          const SizedBox(height: 60),

          // Name
          const Text(
            "Swenn",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          const SizedBox(height: 30),

          // Menu items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  _buildMenuItem(Icons.group, "Create team"),
                  _buildMenuItem(Icons.settings, "Settings"),
                  _buildMenuItem(Icons.emoji_events, "Rank"),
                  _buildMenuItem(Icons.delete, "Delete account"),
                  _buildMenuItem(Icons.logout, "Log Out"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _buildMenuItem(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurple),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
