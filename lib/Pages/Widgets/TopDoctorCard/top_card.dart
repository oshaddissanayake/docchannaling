import 'package:flutter/material.dart';

class TopDoctorCard extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final String image;
  const TopDoctorCard({Key? key, required this.onTap, required this.text, required  this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ()=>onTap(),
          child: Container(
            width: 400,
            height: 100,

            // color: Colors.blue,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white

            ),
            child: Row(
              children: [
                Image.asset('$image',height: 100,width: 100,),
                SizedBox(width: 50,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('$text'),
                    SizedBox(height: 10,),
                    Text('$text'),
                  ],
                ),
              ],
            ),

          ),
        ),

      ],
    );
  }
}
