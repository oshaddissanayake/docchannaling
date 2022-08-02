import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final String image;
 const CategoryCard({Key? key, required this.onTap, required this.text, required  this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ()=>onTap(),
          child: Container(
            width: 167,
            height: 200,
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(6),
            // color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue

            ),
            child: Column(
    children: [
      Image.asset('$image'),
      SizedBox(height: 40,),
      Text('$text')
    ],
           ),

          ),
        ),

      ],
    );
  }
}
