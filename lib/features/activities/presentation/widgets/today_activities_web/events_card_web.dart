import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/common_button.dart';
import 'package:news_app/features/common/presentation/widgets/v_spacing.dart';

class EventsCardWeb extends StatelessWidget {
  final double width;
  const EventsCardWeb({
    super.key,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFBF2C0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(3, 3),
            blurRadius: 6
          )
        ],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/party_img.jpeg")
        )
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: mqHeigth(context, 2)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VSpacing(1),
          Text("Popular events near you!", style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white
          )),
          VSpacing(15),
          Text(
            "Unleash the fun! Explore the world of exciting events happening near you.",
            style: TextStyle(
              fontSize: 12,
              height: 1.2,
              color: Colors.white
            )
          ),
          VSpacing(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: (){
              
                }, 
                label: "See more", 
                width: width * 0.5, 
                heigth: mqHeigth(context, 5),
                color: Colors.white,
                labelColor: Colors.black,
              ),
            ],
          )
        ],
      )
    );
  }
}