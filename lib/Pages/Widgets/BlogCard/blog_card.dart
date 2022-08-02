import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final void Function() onTap;
  final String text;
  final String image;
  const BlogCard({Key? key, required this.onTap, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        height: 150,
        child: Stack(
            children: <Widget>[
        ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset('$image',
          width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
        )

        // Image.asset(
        //
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
      ),
        Container(
          height: 170,
          decoration: BoxDecoration(
              color: Colors.black45.withOpacity(0.3),
              borderRadius: BorderRadius.circular(6)),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '$text',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Text("widget.authorName")
            ],
          ),
        ),
      ],
            ),
    )
    );
  }
}
