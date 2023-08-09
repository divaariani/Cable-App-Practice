import 'package:flutter/material.dart';
import 'cable.dart';
import 'cable_detail.dart';

void main() {
  runApp(const CableApp());
}

class CableApp extends StatelessWidget {
  const CableApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Cable Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 57, 93, 191),
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Cable App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Cable.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CableDetail(cable: Cable.samples[index]);
                    },
                  ),
                );
              },
              child: buildCableCard(Cable.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildCableCard(Cable cable) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(cable.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              cable.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
