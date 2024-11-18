import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final String query;

  ResultsScreen({required this.query});

  @override
  Widget build(BuildContext context) {
    // Mock data based on the query
    List<String> mockResults = [
      'Result 1 for $query',
      'Result 2 for $query',
      'Result 3 for $query',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: mockResults.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(mockResults[index]),
            );
          },
        ),
      ),
    );
  }
}
