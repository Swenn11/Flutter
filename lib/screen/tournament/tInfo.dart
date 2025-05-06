import 'package:flutter/material.dart';
import 'package:my_app/component/point_system_card.dart';
import 'package:my_app/component/schedule_card.dart';
import 'package:my_app/component/tournament_format_card.dart';

class TournamentInfo extends StatelessWidget {
  const TournamentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Image
                Image.asset('assets/images/tournament_list.png'),

                const SizedBox(height: 16),

                // Tournament Format Title
                const Text(
                  'Tournament Format',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                // Tournament Format Card
                const TournamentFormatCard(),

                const SizedBox(height: 16),

                // Team Register Button
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 50),
                      backgroundColor: const Color.fromARGB(255, 84, 20, 116),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      // TODO: Add team registration logic here
                    },
                    child: const Text('Team Register'),
                  ),
                ),

                const SizedBox(height: 24),

                // Point System Title
                const Text(
                  "Point System:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                // Point System Card
                const PointSystemCard(),

                const SizedBox(height: 24),

                // Schedule Title
                const Text(
                  "Schedule:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                // Schedule Card
                const ScheduleCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
