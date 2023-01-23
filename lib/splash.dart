import 'package:flutter/material.dart';
import 'package:newprofil/new.dart';

import 'bootom.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(
      Duration(seconds: 8),
      () {},
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Navigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/5446/5446544.png'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
