import 'package:flutter/material.dart';
import 'package:my_app/screen/tournament/tInfo.dart';
import 'package:my_app/screen/tournament/tResults.dart';
import 'package:my_app/screen/tournament/tParticipant.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // optional: removes debug banner
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context); // буцах үйлдэл
                  },
                ),
                const SizedBox(width: 8),
                const Text(
                  'PUBG MOBILE NATIONAL MASTERS - 2025',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Color.fromARGB(255, 71, 18, 106),
            tabs: <Widget>[
              Tab(text: 'Information'),
              Tab(text: 'Participant'),
              Tab(text: 'Results'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            TournamentInfo(),
            TournamentParticipant(),
            TournamentResults(),
          ],
        ),
      ),
    );
  }
}
