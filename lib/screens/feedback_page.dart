import 'package:flutter/material.dart';
// import '../utils/next_screen.dart';
import 'package:game_on/widgets/doublecircle_bgi.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var _enteredName = '';
  var _enteredEmail = '';
  var _enteredMessage = '';
  final _emailFocusNode = FocusNode();
  final _messageFocusNode = FocusNode();

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      // Submit the form
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFA32EEB),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const DoubleCircle(),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Feedback',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Container(
                  padding:
                      const EdgeInsets.only(left: 10, top: 5.0, bottom: 5.0),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(30)),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(labelText: 'Your Name*'),
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_emailFocusNode);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Your name is required';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              _enteredName = newValue!;
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          TextFormField(
                            focusNode: _emailFocusNode,
                            decoration:
                                const InputDecoration(labelText: 'Your Email*'),
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) {
                              FocusScope.of(context)
                                  .requestFocus(_messageFocusNode);
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Email is required';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              _enteredEmail = newValue!;
                            },
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          TextFormField(
                            focusNode: _messageFocusNode,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                labelText: 'Your Message*'),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Message is required';
                              }
                              return null;
                            },
                            onSaved: (newValue) {
                              _enteredMessage = newValue!;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(151, 51, 238, 1.0)),
                  ),
                  onPressed: _submit,
                  child: const Text('Submit', style: TextStyle(fontSize: 20)),
                ),
                SizedBox(height: 40),
                Text(
                  "Your feedback is our app's secret ingredient for perfection.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
