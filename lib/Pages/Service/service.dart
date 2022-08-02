import 'package:docchannaling/Pages/Widgets/TopDoctorCard/top_card.dart';
import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(padding: const EdgeInsets.all(25.0),child:Column(
        children: [
          TopDoctorCard(image:"assets/img2_new.png", onTap: () {  }, text: 'Test',),

        ],
      ) ,),
    );
  }
}
