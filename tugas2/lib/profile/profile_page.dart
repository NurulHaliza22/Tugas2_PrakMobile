import 'package:flutter/material.dart';
import 'package:tugas2/login/login_page.dart';

class ProfilePage extends StatelessWidget {
  final String username;

  const ProfilePage({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 241, 123, 123),
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12), 
            const Text(
              "Username",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8), 
            Container(
              padding: const EdgeInsets.all(16), 
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 241, 123, 123), width: 2), 
                borderRadius: BorderRadius.circular(8), 
              ),
              child: Text(
                username, 
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 60), 
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  const url = 'https://www.instagram.com/nhlzaa_'; 
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 241, 123, 123),
                   padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 30,),
                    foregroundColor: Colors.white,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft, 
                  child: Text('About App'),
                ),
              ),
            ),
            const SizedBox(height: 8), 
            SizedBox(
              width: double.infinity, 
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }),
                    (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 241, 123, 123), // Same color as About App button
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 30,
                  ),
                  foregroundColor: Colors.white,
                ),
                child: const Align(
                  alignment: Alignment.centerLeft, 
                  child: Text('Logout'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
