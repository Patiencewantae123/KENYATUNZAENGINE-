import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Example trending topics
    List<String> trendingTopics = [
      "Kenya elections 2024",
      "Tech startups in Nairobi",
      "Local news in Kenya",
      "Climate change awareness"
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: trendingTopics.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.trending_up),
              title: Text(trendingTopics[index]),
            );
          },
        ),
      ),
    );
  }
}
// TODO Implement this library.