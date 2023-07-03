import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreeen extends StatelessWidget {
  const HomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Column(
        children: [
          WelcomeText(),
          SizedBox(height: 14,),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search For Products',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),prefixIcon: Icon(Icons.search,weight: 10,)),
            ),
          )
        ],
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Howdy , What Are You\nLooking For 👀',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          child: Icon(
            Icons.shopping_cart,
            weight: 20,
          ),
        ),
      ],
    );
  }
}
