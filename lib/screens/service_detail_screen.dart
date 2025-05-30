import 'package:flutter/material.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String serviceName;

  ServiceDetailScreen({required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(serviceName)),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text("Booking Confirmed"),
              content: Text("You booked $serviceName"),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("OK"),
                ),
              ],
            ),
          ),
          child: Text("Book Service"),
        ),
      ),
    );
  }
}
