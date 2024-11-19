import 'package:flutter/material.dart';
import 'package:task_1/view/login_screen/login_screen.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  Future<void> _connectWallet() async {
    // Mock wallet connection logic
    await Future.delayed(const Duration(seconds: 2)); // Simulating delay
    String walletAddress = "0x1234...abcd"; // Mock wallet address

    // Navigate to main interface
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => MainInterface(walletAddress: walletAddress)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Connect Wallet',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _connectWallet,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text(
            'Connect Wallet',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
