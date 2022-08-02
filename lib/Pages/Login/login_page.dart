import 'package:docchannaling/Pages/Home/home.dart';
import 'package:docchannaling/Pages/NavBar/bottom_navbar.dart';
import 'package:docchannaling/Pages/Register/register.dart';
import 'package:docchannaling/Theme/textStyle.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late final onTap = TapGestureRecognizer()
    ..onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome Back\nPlease Sign In.",
              style: AppStyle.text01,
            ),
            SizedBox(
              height: 30,
            ),
            Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_pounvezv.json'),
            SizedBox(
              height: 30,
            ),
            TextFormField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                hintText: 'Email',

              ),),
            SizedBox(
              height: 15,
            ),
            TextFormField(

              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))),
                hintText: 'Password',

              ),),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(onPressed: signIn,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  child: Text(
                      "Sign In"
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Don't Have an Account Yet? "),InkWell(onTap:signUp,child: Text("Sign Up",style: AppStyle.text03,))],
            )
            // RichText(textAlign: TextAlign.center,
            // text: TextSpan(
            //   children: [
            //     TextSpan(text: "Don't Have An Account Yet?",style: AppStyle.text02),
            //     TextSpan(text: "SignUp",recognizer:signUp(), style: AppStyle.text02)
            //   ]
            // ),
            // )

          ],
        ),
      ),
    );
  }

  void signIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Bottom_navbar()));
  }

  void signUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }
}
