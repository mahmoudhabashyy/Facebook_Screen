import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(4),
      height: 200,
      //color: Colors.red,
      child: const Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage:
                AssetImage("assets/images/person2.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mahmoud Habashy",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "28 m.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.close),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu),
            ],
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: Text('''
      Travel: Wander often, wonder always What’s your favorite travel destination? Share your adventures below.
      Self-Care: Take a moment for yourself today What’s one thing you do to recharge? Let’s inspire each other
            ''',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.thumb_up),
              SizedBox(width: 10,),
              Text("Like"),
              Spacer(),
              Icon(Icons.comment),
              SizedBox(width: 10,),
              Text("Comment"),
              Spacer(),
              Icon(Icons.share),
              SizedBox(width: 10,),
              Text("Share"),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}