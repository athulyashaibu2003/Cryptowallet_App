import 'package:flutter/material.dart';
import 'package:task_1/view/home_screen/home_screen.dart';

class ProfilePage extends StatelessWidget {
  final String walletAddress = "0x1234...abcd"; // Mock wallet address
  final String walletBalance = "2.5 ETH"; // Mock wallet balance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wallet Address:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(walletAddress, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              'Balance:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(walletBalance, style: const TextStyle(fontSize: 16)),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logout logic
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const ScreenHome()),
                      (route) => false);
                },
                child: const Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
