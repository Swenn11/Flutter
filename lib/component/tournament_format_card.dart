import 'package:flutter/material.dart';

class TournamentFormatCard extends StatelessWidget {
  const TournamentFormatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Game: TPP / SQUAD'),
            SizedBox(height: 4),
            Text('Maps: Erangel / Miramar / Sanhok'),
            SizedBox(height: 4),
            Text('PrizePool: 10,000,000₮ / 2,800\$'),
          ],
        ),
      ),
    );
  }
}
