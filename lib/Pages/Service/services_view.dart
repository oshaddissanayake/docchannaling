import 'package:flutter/material.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  _ServicesViewState createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/image2_new.png")
        ],
      ),
    );
  }
}
