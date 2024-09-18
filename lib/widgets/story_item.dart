import 'package:facebook_route/widgets/color_pallet.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      padding: const EdgeInsets.all(8),
      width: size.height * 0.15,
      //color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/person3.jpg"),
        ),
      ),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: ColorsPallet.primaryColor,width: 3),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(4),
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/person1.jpg"),
            ),
          ),
          const  Spacer(),
          const Text(
            " Habashy",
            style: TextStyle(
              color: Colors.white,
              fontSize:15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
