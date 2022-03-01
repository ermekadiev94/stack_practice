import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 130,
          width: 110,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Color(0xffF90640), Color(0xff8F00FF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          height: 128,
          width: 108,
          decoration: const BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xffDED9FF))],
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Column(
          children: [
            Image.asset(
              image,
              height: 50,
              width: 80,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Muller', fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: 'Muller',
                color: Colors.grey[400],
                fontSize: 10,
              ),
            )
          ],
        )
      ],
    );
  }
}
