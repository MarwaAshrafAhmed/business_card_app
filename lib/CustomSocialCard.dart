import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSocialCard extends StatelessWidget {

  final FaIconData icon;
  final String text;
  final String subText;
  final Color color;
  final void Function()? tap;


  const CustomSocialCard({
    super.key,
    required this.icon,
    required this.text,
    required this.subText,
    required this.color,
    this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(

        padding: EdgeInsets.all(4),
        margin: EdgeInsetsGeometry.symmetric(vertical: 8),
        decoration: BoxDecoration(

          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.blueGrey.shade300, // Glow color matching your theme
          //     blurRadius: .5,
          //     spreadRadius: .4,
          //   ),
          // ],

          borderRadius: BorderRadiusGeometry.circular(16),
          color: Colors.grey.shade300,
        ),
        child: ListTile(
          leading: FaIcon(icon,color: color,size: 26,),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: .bold,
            ),
          ),
          subtitle: Text(
            subText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: .w500,
            ),
          ),
          trailing: Icon(Icons.arrow_outward_outlined,color: Colors.grey,),
        ),
      ),
    );
  }
}
