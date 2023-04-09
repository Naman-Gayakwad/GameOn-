import 'package:flutter/material.dart';
import 'package:game_on/Sport_type.dart';
// import 'package:game_on/utils.dart';
import 'package:game_on/loadingpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		// scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: SportType(),
		),
		),
	);
	}
}