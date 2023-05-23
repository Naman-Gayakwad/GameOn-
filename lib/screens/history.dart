import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> texts = ["Chess", "Volleyball"];

  List<String> content = ["chess", "volleyball"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: texts.length,
            itemBuilder: (context, index) {
              final item = texts[index];
              return Card(
                color: Colors.purple,
                elevation: 4,
                child: ExpansionTile(
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    childrenPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    expandedCrossAxisAlignment: CrossAxisAlignment.end,
                    title: Text(
                      "${texts[index]}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    children: [
                      Text(content[index],
                          style: const TextStyle(color: Colors.white)),
                      // This button is used to remove this item
                    ]),
              );
            }));
  }
}
