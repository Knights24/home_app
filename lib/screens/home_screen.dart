import 'package:flutter/material.dart';
import '../widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> services = [
    {"name": "Electrician", "location": "Near You"},
    {"name": "Plumber", "location": "5 mins away"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nearby Services")),
      body: ListView(
        children: services.map((s) => ServiceCard(service: s)).toList(),
      ),
    );
  }
}
