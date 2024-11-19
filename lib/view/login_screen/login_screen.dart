import 'package:flutter/material.dart';

class MainInterface extends StatelessWidget {
  final String walletAddress;

  const MainInterface({required this.walletAddress, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Interface'),
      ),
      body: Center(
        child: Text(
          'Connected Wallet Address:\n$walletAddress',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
