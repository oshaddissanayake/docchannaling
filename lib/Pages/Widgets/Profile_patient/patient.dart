import 'package:flutter/material.dart';
class PatientProfile extends StatefulWidget {
  const PatientProfile({Key? key}) : super(key: key);

  @override
  _PatientProfileState createState() => _PatientProfileState();
}

class _PatientProfileState extends State<PatientProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(height: 50,),

            Center(
              child: Container(
                width: 100,
                height: 100,
                child:Image.asset(
                  "assets/img2_new.png"
                ) ,
              ),
            ),
            SizedBox(height: 20,),
            Text("First Name"),
            SizedBox(height: 10,),

            Text("Last Name"),
            SizedBox(height: 10,),
            Text("Email"),



          ],
        ),
      ),
    );
  }
}
