import 'package:docchannaling/Pages/Login/login_page.dart';
import 'package:docchannaling/Pages/Welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';




void main() {
  runApp(DocApp());
}

class DocApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOC Channaling',

      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_0fhlytwe.json'),
            const Text('DocChannaing' ,style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),)
          ],
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      nextScreen:const Welcome(),
      splashIconSize: 500,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,

    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true
      ),

    );
  }
}

