import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(  
    // #1 Root Material widget: sets up app theme, title, and initial screen
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(  
    // #2 Provides the basic visual layout structure (app bar, body, etc.)
    appBar: AppBar(
      title: const Text('All Widgets'), 
      // #3 AppBar widget: displays the top navigation bar with a title
    ),
    body: Center(  
      // #7 Centers its child widget in the middle of the screen
      child: Container(  
        // #8 Container widget: adds padding and holds layout content
        padding: const EdgeInsets.all(20),
        child: Column(  
          // #6 Column widget: arranges children vertically
          children: [
            Row(  
              // #5 Row widget: arranges children horizontally
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  
                // #4 Text widget: displays the word "Flutter" on screen
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
