import 'package:flutter/material.dart';

class TournamentParticipant extends StatelessWidget {
  const TournamentParticipant({super.key});

  final List<Map<String, String>> groupB = const [
    {'name': 'SILENT CREW', 'image': 'assets/images/silent_crew.png'},
    {'name': 'EXODUS', 'image': 'assets/images/profile_pubg.png'},
    {'name': 'No Sympathy', 'image': 'assets/images/no_sympathy.png'},
    {'name': 'Running Turtles', 'image': 'assets/images/running_turtles.png'},
    {'name': 'revolution', 'image': 'assets/images/revolution.png'},
    {'name': 'Phantom', 'image': 'assets/images/phantom.png'},
    {'name': 'REVOLUTION team', 'image': 'assets/images/revolution_team.png'},
    {'name': 'SEE THE FUTURE', 'image': 'assets/images/see_future.png'},
  ];

  final List<Map<String, String>> groupA = const [
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
    {'name': 'FAM', 'image': 'assets/images/fam.png'},
    {
      'name': 'SILENT CREW \n GIRLS',
      'image': 'assets/images/silent_crew_girls.png',
    },
    {'name': 'MaxFour', 'image': 'assets/images/max_four.png'},
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
    {'name': 'StormFire', 'image': 'assets/images/storm_fire.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Group B',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildTeamGrid(groupB),
          const SizedBox(height: 20),
          const Text(
            'Group A',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          buildTeamGrid(groupA),
        ],
      ),
    );
  }

  Widget buildTeamGrid(List<Map<String, String>> teams) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 0.8,
      children:
          teams.map((team) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, blurRadius: 6),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(team['image']!, fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(team['name']!, textAlign: TextAlign.center),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
