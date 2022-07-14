import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:todolisttwo/Pages/addtodo.dart';
import 'package:todolisttwo/widgets/pagecontainer.dart';
import 'package:todolisttwo/widgets/titlecontainer.dart';
import 'package:todolisttwo/widgets/todoitem.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final blackColor = const Color(0xff0F1110);
  // final bool isSelected = false;
  bool isBlack = true;
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      widgetPage: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size(0, 60),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: AppBar(
              titleSpacing: 0,
              elevation: 0.0,
              backgroundColor: Colors.white,
              leading: FloatingActionButton(
                onPressed: () {},
                elevation: 0.0,
                highlightElevation: 0.0,
                mini: true,
                backgroundColor: blackColor,
                child: const Icon(
                  Icons.grid_view_rounded,
                  color: Colors.white,
                ),
              ),
              centerTitle: true,
              title: const Text(
                "Task Manager",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5),
              ),
              actions: const [
                Icon(
                  Icons.notifications_none_rounded,
                  size: 35,
                ),
              ],
              actionsIconTheme: IconThemeData(color: blackColor),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: <Widget>[
              const TitleContainer(
                titleOne: "Welcome Back!",
                titleTwo: "Here's Update Today.",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() => isBlack = !isBlack);
                      },
                      child: const Text("Today"),
                      elevation: 0,
                      highlightElevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      splashColor: null,
                      color: isBlack ? blackColor : Colors.white,
                      textColor: isBlack ? Colors.white : blackColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() => isBlack = !isBlack);
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Upcoming"),
                      elevation: 0,
                      highlightElevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      splashColor: null,
                      color: isBlack ? blackColor : Colors.white,
                      textColor: isBlack ? Colors.white : blackColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() => isBlack = !isBlack);
                      },
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Task Done"),
                      elevation: 0,
                      highlightElevation: 0,
                      hoverElevation: 0,
                      focusElevation: 0,
                      splashColor: null,
                      color: isBlack ? blackColor : Colors.white,
                      textColor: isBlack ? Colors.white : blackColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    TodoItem(),
                    Text("Title 1"),
                    Text("Title 2"),
                    Text("Title 3")
                  ],
                  scrollDirection: Axis.vertical,
                ),
              )
            ],
          ),
        ),
        //* ============ OPENCONTAINER
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: OpenContainer(
          closedShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          closedColor: blackColor,
          transitionDuration: const Duration(milliseconds: 500),
          closedBuilder: (context, openContainer) {
            return FloatingActionButton.extended(
              onPressed: openContainer,
              extendedPadding: const EdgeInsets.symmetric(horizontal: 20),
              icon: const Icon(Icons.add_box_rounded),
              label: const Text(
                "Add Task",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              backgroundColor: blackColor,
            );
          },
          openBuilder: (context, closedContainer) => const AddTodo(),
        ),
      ),
    );
  }
}
