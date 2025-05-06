import 'package:flutter/material.dart';

class PointSystemCard extends StatelessWidget {
  const PointSystemCard({super.key});

  Widget pointRow(String place, String point) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Place $place",
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          "$point pts",
          style: const TextStyle(color: Color.fromARGB(255, 75, 26, 133)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            pointRow("1", "10"),
            pointRow("2", "6"),
            pointRow("3", "5"),
            pointRow("4", "4"),
            pointRow("5", "3"),
            pointRow("6", "2"),
            pointRow("7-8", "1"),
            pointRow("9-16", "0"),
            const SizedBox(height: 12),
            const Text(
              "1 Elimination = 1 Point",
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
