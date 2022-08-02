import 'package:docchannaling/Pages/Login/login_page.dart';
import 'package:docchannaling/Theme/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Lets Get Your\nAccount Created",
                style: AppStyle.text01,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(

                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  hintText: 'FullName',

                ), ),
              SizedBox(
                height: 15,
              ),

              TextFormField(

                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  hintText: 'Email',

                ), ),
              SizedBox(
                height: 15,
              ),
              TextFormField(

                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  hintText: 'Password',

                ), ),
              SizedBox(
                height: 15,
              ),

              TextFormField(

                decoration:InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  hintText: 'Age',

                ), ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 60,
                child: ElevatedButton(onPressed: singup, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))), child: Text(
                    "Sign Up"
                )),
              ),
              SizedBox(
                height: 15,
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Already Have an Account? "),InkWell(onTap:signup,child: Text("Sign In",style: AppStyle.text03,))],
              )

            ],
          ),
        ),
      ),
    );
  }
  void singup(){

    Navigator.push(context,  MaterialPageRoute(builder:(context) =>LoginPage() ));
  }

  void signup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
