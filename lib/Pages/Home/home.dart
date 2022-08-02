import 'package:docchannaling/Pages/Login/login_page.dart';
import 'package:docchannaling/Pages/Widgets/CatergoryCard/category_card.dart';
import 'package:docchannaling/Pages/Widgets/Profile_patient/patient.dart';
import 'package:docchannaling/Pages/Widgets/TopDoctorCard/top_card.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Padding(

      // body: Padding(padding: const EdgeInsets.all(25.0),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Find yor desired\nDoctor"),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: InkWell(
                  onTap: ()=>{Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PatientProfile()))},
                  child: Image.asset(
                   "assets/img2_new.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Find yor desired\nDoctor"),
              Text("See ALl"),


            ],
          ),
          SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: [
                CategoryCard(image:"assets/img2_new.png", onTap: () {  }, text: 'Test',),
                CategoryCard(image:"assets/img1.png", onTap: () {  }, text: 'Test',),
                CategoryCard(image:"assets/img1.png", onTap: () {  }, text: 'Test',),
              ]
          ),
        ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Doctors"),
              Text("See ALl"),


            ],
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            child: Column(

              children: [
                TopDoctorCard(image:"assets/img2_new.png", onTap: () {  }, text: 'Test',),
                SizedBox(height: 20,),
                TopDoctorCard(image:"assets/img2_new.png", onTap: () {  }, text: 'Test',),
                SizedBox(height: 20,),
                TopDoctorCard(image:"assets/img2_new.png", onTap: () {  }, text: 'Test',),



              ],
            ),
          ),

//             Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CategoryCard(image:"assets/img1.png", onTap: () {  }, text: 'Test',),
//                 CategoryCard(image:"assets/img1.png", onTap: () {  }, text: 'Test',),
//                 CategoryCard(image:"assets/img1.png", onTap: () {  }, text: 'Test',),
//
//
//               ],
//             ),

        ],
      ),
      );

  }
}
