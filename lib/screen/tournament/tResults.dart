import 'package:flutter/material.dart';
import '../../component/qualifier.dart';
// make sure this defines QualifierSelector correctly

class TournamentResults extends StatefulWidget {
  const TournamentResults({super.key});

  @override
  State<TournamentResults> createState() => _TournamentResultsState();
}

class _TournamentResultsState extends State<TournamentResults> {
  final qualifiers = ['Open Qualifier', 'Closed Qualifier', 'Main Event'];
  String selectedQualifier = 'Open Qualifier';
  String selectedGroup = 'Group B';
  String selectedDay = 'March 28';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              QualifierSelector(
                qualifiers: qualifiers,
                selected: selectedQualifier,
                onChanged: (value) {
                  setState(() {
                    selectedQualifier = value;
                  });
                },
              ),

              const SizedBox(height: 24),

              DropdownButtonFormField<String>(
                value: selectedGroup,
                items:
                    ['Group A', 'Group B', 'Group C']
                        .map(
                          (group) => DropdownMenuItem(
                            value: group,
                            child: Text(group),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedGroup = value;
                    });
                  }
                },
                decoration: const InputDecoration(labelText: 'Select Group'),
              ),

              const SizedBox(height: 16),

              DropdownButtonFormField<String>(
                value: selectedDay,
                items:
                    ['March 27', 'March 28', 'March 29']
                        .map(
                          (day) =>
                              DropdownMenuItem(value: day, child: Text(day)),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedDay = value;
                    });
                  }
                },
                decoration: const InputDecoration(labelText: 'Select Day'),
              ),

              const SizedBox(height: 24),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Match-3 logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 69, 22, 105),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Text('match-3'),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              Center(
                child: OutlinedButton(
                  onPressed: () {
                    // TODO: See group rankings
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Color.fromARGB(255, 83, 23, 111),
                    ),
                  ),
                  child: const Text(
                    'SEE GROUP OVERALL RANKINGS',
                    style: TextStyle(color: Color.fromARGB(255, 74, 27, 125)),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Match Ranking',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: See MVP
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 88, 29, 143),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Text('see MVP'),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              const Center(
                child: Text(
                  'No match result',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
