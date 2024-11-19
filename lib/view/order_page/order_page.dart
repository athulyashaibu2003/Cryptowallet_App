import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final List<Map<String, String>> buyOrders = [
    {"price": "0.5 ETH", "quantity": "10"},
    {"price": "0.6 ETH", "quantity": "8"},
  ];

  final List<Map<String, String>> sellOrders = [
    {"price": "0.7 ETH", "quantity": "5"},
    {"price": "0.8 ETH", "quantity": "12"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Buy Orders',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  ...buyOrders.map((order) {
                    return Text('${order["price"]} - ${order["quantity"]} qty',
                        style: const TextStyle(color: Colors.green));
                  }),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Sell Orders',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  ...sellOrders.map((order) {
                    return Text('${order["price"]} - ${order["quantity"]} qty',
                        style: const TextStyle(color: Colors.red));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
