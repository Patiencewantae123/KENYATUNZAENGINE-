import 'package:flutter/material.dart';
import 'package:kenya_tunza_engine/results_screen.dart';


class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller = TextEditingController();
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KenyaTunzaEngine'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter search query',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (query.isNotEmpty) {
                  // Navigate to ResultsScreen with the query
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsScreen(query: query),
                    ),
                  );
                }
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
