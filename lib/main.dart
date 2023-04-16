import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'Sport_type.dart';
import 'providers/internet_provider.dart';
import 'screens/mainpage.dart';
import 'providers/sign_in_provider.dart';
import 'utils.dart';
import 'screens/loadingpage.dart';
import 'screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'screens/forgot_password_screen.dart';
import 'type.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => SignInProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => InternetProvider()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter',
        debugShowCheckedModeBanner: false,
        scrollBehavior: MyCustomScrollBehavior(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Scaffold(
          // body: SingleChildScrollView(
          body: Scene(),
          // ),
        ),
      ),
    );
  }
}
