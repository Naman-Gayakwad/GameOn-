import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firebase_options.dart';
import 'providers/internet_provider.dart';
import 'providers/sign_in_provider.dart';
import 'utils.dart';
import 'screens/loadingpage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: kIsWeb || Platform.isAndroid ? const FirebaseOptions(
//       apiKey: "AIzaSyB37nj5FO4krsZagulhkJicb8vF2dtrPKk",
//       appId: "1:273214355746:web:7b63c322f7ce52ec6e8d7b",
//       messagingSenderId: "273214355746",
//       projectId: "gameon-official",
//       storageBucket: "gameon-official.appspot.com",
//       authDomain: "gameon-official.firebaseapp.com",) : null
//   );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          primarySwatch: Colors.purple,
        ),
        home: Scaffold(
          // body: SingleChildScrollView(
          // body: StreamBuilder(
          //   stream: FirebaseAuth.instance.authStateChanges(),
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const Scene();
          //     }
          //     if (snapshot.hasData) {
          //       return MainPage();
          //     }
          //     return const Scene();
          //   },
          // ),
          body: Scene(),
        ),
      ),
    );
  }
}
