import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:game_on/screens/contactus.dart';
import 'package:game_on/screens/store.dart';
import 'package:game_on/widgets/store_grids.dart';
import 'package:game_on/widgets/video_tile.dart';
import 'screens/be_a_mentor.dart';
import 'screens/coach.dart';
import 'screens/create_account.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/home.dart';
import 'screens/mainpage.dart';
import 'screens/people_page.dart';
import 'screens/profile_page.dart';
import 'screens/user_page.dart';
import 'widgets/navigation_drawer_widget.dart';
// import 'screens/home.dart';
// import 'Sport_type.dart';
import 'firebase_options.dart';
import 'providers/internet_provider.dart';
// import 'screens/mainpage.dart';
import 'providers/sign_in_provider.dart';
import 'utils.dart';
import 'screens/loadingpage.dart';
// import 'screens/login_screen.dart';
import 'package:provider/provider.dart';
// import 'firebase_options.dart';
// import 'screens/forgot_password_screen.dart';
// import 'type.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
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
          primarySwatch: Colors.blue,
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
