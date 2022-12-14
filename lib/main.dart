import 'dart:async';
import 'package:coorg/sceens/aftersplash_screen.dart';
import 'package:coorg/sceens/main_homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coorg Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SsplashScreen(),
    );
  }
}

class SsplashScreen extends StatefulWidget {
  const SsplashScreen({Key? key}) : super(key: key);

  @override
  State<SsplashScreen> createState() => _SsplashScreenState();
}

class _SsplashScreenState extends State<SsplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const MainHomeScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundimg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'COORG EXPLORER',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Begin your Adventure',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/koteabby.jpg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Second Screen',
              style: TextStyle(
                color: Colors.green,
                fontSize: 38,
              ),
            ),
            // Text(
            //   'Begin your Adventure',
            //   style: TextStyle(
            //     color: Colors.green,
            //     fontSize: 16,
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // CircularProgressIndicator(
            //   color: Colors.green,
            //   strokeWidth: 2.0,
            // ),
          ],
        ),
      ),
    );
  }
}
