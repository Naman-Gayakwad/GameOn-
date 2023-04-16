import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'forgot_password_screen.dart';
import 'mainpage.dart';
import '../providers/internet_provider.dart';
import '../providers/sign_in_provider.dart';
import '../Sport_type.dart';
import '../utils/next_screen.dart';
import '../utils/snack_bar.dart';
import 'package:provider/provider.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../type.dart';
// import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final RoundedLoadingButtonController googleController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController facebookController =
      RoundedLoadingButtonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.73,
            width: MediaQuery.of(context).size.width * 1.4,
            child: Image.asset('assets/images/double_circle.png'),
          ),
          Column(
            children: [
              Container(
                // color: Colors.amber,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              SizedBox(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Inter',
                      ),
                    ),
                    const Text(
                      'Sign in to your account',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Color.fromRGBO(60, 53, 53, 1),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: TextField(
                        controller: emailController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Enter your Email Address',
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                      child: TextField(
                        controller: passwordController,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: const InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170, top: 2),
                      child: TextButton(
                        onPressed: () {
                          nextScreenReplace(context, ForgotPassword());
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Inter',
                              color: Colors.white),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        print('sign in pressed');
                        final userCred = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                            .catchError((error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(error.toString())));
                        });
                        print(userCred);
                        nextScreenReplace(context, Type());
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 197, 154, 235),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Row(children: const [
                            Text('Sign In'),
                            Icon(Icons.arrow_right_alt)
                          ]),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: const Divider(
                            color: Colors.black54,
                            thickness: 1,
                            // indent: 29,
                            // endIndent: 10,
                          ),
                        ),
                        const Text('Or Sign In with'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: const Divider(
                            color: Colors.black54,
                            thickness: 1,
                            // indent: 29,
                            // endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundedLoadingButton(
                          onPressed: () {
                            handleGoogleSignIn();
                          },
                          width: MediaQuery.of(context).size.width * 0.80,
                          controller: googleController,
                          successColor: Colors.purple,
                          color: Colors.red.shade300,
                          child: Wrap(
                            children: const [Icon(FontAwesomeIcons.google)],
                          ),
                        ),
                        // RoundedLoadingButton(
                        //   onPressed: () {},
                        //   width: MediaQuery.of(context).size.width * 0.15,
                        //   controller: facebookController,
                        //   successColor: Colors.purple,
                        //   child: Wrap(
                        //     children: [Icon(FontAwesomeIcons.facebook)],
                        //   ),
                        // ),
                        // RoundedLoadingButton(
                        //   onPressed: () {},
                        //   width: MediaQuery.of(context).size.width * 0.15,
                        //   controller: facebookController,
                        //   successColor: Colors.purple,
                        //   child: Wrap(
                        //     children: [Icon(FontAwesomeIcons.twitter)],
                        //   ),
                        // ),
                        // RoundedLoadingButton(
                        //   onPressed: () {},
                        //   width: MediaQuery.of(context).size.width * 0.15,
                        //   controller: facebookController,
                        //   successColor: Colors.purple,
                        //   color: Colors.green[400],
                        //   child: Wrap(
                        //     children: [Icon(FontAwesomeIcons.phone)],
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Don\'t have an account? Create Now'),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            // indent: 29,
                            // endIndent: 10,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              nextScreenReplace(context, const Type());
                            },
                            child: Text(
                              'Skip for now',
                              style: TextStyle(color: Colors.grey.shade600),
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.33,
                          child: const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                            // indent: 29,
                            // endIndent: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

//handling google signin
  Future handleGoogleSignIn() async {
    final sp = context.read<SignInProvider>();
    final ip = context.read<InternetProvider>();
    await ip.checkInternetConnection();

    if (ip.hasInternet == false) {
      openSnackbar(context, 'Check your Internet connection', Colors.red);
      googleController.reset();
      // facebookController.reset();
    } else {
      await sp.signInWithGoogle().then((value) {
        if (sp.hasError == true) {
          openSnackbar(context, sp.errorCode.toString(), Colors.red);
          googleController.reset();
        } else {
          //checking whether user exists or not
          sp.checkUserExists().then(
            (value) async {
              if (value == true) {
                // nextScreen(context, HomeScreen());
                nextScreenReplace(
                  context,
                  const Type(),
                );
                //user exist
              } else {
                //user does not exist
                sp.saveDataToFirestore().then((value) => sp
                    .savedDataToSharedPreferences()
                    .then((value) => sp.setSignIn().then((value) {
                          googleController.success();
                          handleAfterSignIn();
                        })));
              }
            },
          );
        }
      });
    }
  }
  //handleAfterSignIn function

  handleAfterSignIn() {
    Future.delayed(const Duration(milliseconds: 1000)).then((value) {
      nextScreenReplace(context, const Type());
    });
  }
}
