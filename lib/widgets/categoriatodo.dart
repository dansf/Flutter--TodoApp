import 'package:flutter/material.dart';

class CategoriaTodo extends StatelessWidget {
  const CategoriaTodo({Key? key, this.categoria}) : super(key: key);

  final String? categoria;
  final blackColor = const Color(0xff0F1110);

  @override
  Widget build(BuildContext context) {
    final fullWidth = MediaQuery.of(context).size.width;
    final rowWidth = fullWidth * 0.25;

    return SizedBox(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(94, 131, 131, 131),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              categoria ?? "Null",
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
