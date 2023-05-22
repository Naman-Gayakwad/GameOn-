import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  DropDown({super.key});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showText = !showText;
        });
      },
      child: Column(
        children: [
          AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: const Color(0xFFA32EEB).withOpacity(0.8),
            ),
            duration: const Duration(milliseconds: 200),
            height: showText ? 100 : 60,
            // color: Color(0xFFA32EEB).withOpacity(0.8),
            child: const Center(
              child: Text(
                'Are you facing any technical problems?',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          if (showText)
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: const Color(0xFFA32EEB).withOpacity(0.6)),
              child: const Center(
                child: Text(
                  textAlign: TextAlign.center,
                  'For technical help(issues with login, password, page not being displayed, etc.), write to us at help@gameon.com. We will resolve the problem and get back to you at the earliest.\n',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
