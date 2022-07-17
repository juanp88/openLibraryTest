import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  // the values we need
  final String text;
  final String label;
  final IconData icon;

  const InfoCard(
      {Key? key, required this.text, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          text,
          style: const TextStyle(
              color: Colors.teal, fontSize: 20, fontFamily: "Source Sans Pro"),
        ),
        subtitle: Text(label),
      ),
    );
  }
}
