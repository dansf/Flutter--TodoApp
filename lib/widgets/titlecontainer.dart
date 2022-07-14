import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({Key? key, this.titleOne, this.titleTwo})
      : super(key: key);

  final String? titleOne;
  final String? titleTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleOne ?? "Welcome",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                letterSpacing: 1),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            titleTwo ?? "sads",
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.w700, letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
