import 'package:docchannaling/Pages/Widgets/BlogCard/blog_card.dart';
import 'package:flutter/material.dart';


class BlogsHome extends StatefulWidget {
  const BlogsHome({Key? key}) : super(key: key);

  @override
  _BlogsHomeState createState() => _BlogsHomeState();
}

class _BlogsHomeState extends State<BlogsHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(child: Text("sds"),onPressed: null,),
          ),
          SizedBox(height: 10,),
          BlogCard(image: 'assets/img2_new.png', text: 'Asd', onTap: () {  },),
          BlogCard(image: 'assets/img2_new.png', text: 'Asd', onTap: () {  },),
          
         
        ],
      ),
    );
  }
}
