import 'package:flutter/material.dart';
import 'package:todolisttwo/widgets/categoriatodo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key}) : super(key: key);

  final double heightContainer = 190;
  final double widthContainer = double.infinity;
  final blackColor = const Color(0xff0F1110);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightContainer,
      width: widthContainer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: const Color(0xff1FD0B0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //TODO: Consertar o layout da column
                Row(
                  children: [
                    const CategoriaTodo(categoria: "Works"),
                    const CategoriaTodo(categoria: "Activity"),
                  ],
                ),
                Container(
                  height: 130,
                  padding: const EdgeInsets.only(
                      top: 15, left: 5, right: 0, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Taking My Syster To School",
                              style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 0.5),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.calendar_month_rounded,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "12 October 2021",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.watch_later_outlined, size: 20),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "07:30 (Remind At 07:15)",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {},
                  minWidth: 30,
                  height: 30,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  color: blackColor,
                  textColor: Colors.white,
                  elevation: 0,
                  highlightElevation: 0,
                  child: const Icon(Icons.edit, size: 17),
                ),
                MaterialButton(
                  onPressed: () {},
                  minWidth: 37,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: blackColor),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
