import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CupertinoSegmentedControl(
              groupValue: selectedIndex,
              onValueChanged: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              children: {
                0: Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "Tab 0",
                    style: TextStyle(
                        color: selectedIndex == 0 ? Colors.white : Colors.blue),
                  ),
                ),
                1: Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "Tab 1",
                    style: TextStyle(
                        color: selectedIndex == 1 ? Colors.white : Colors.blue),
                  ),
                ),
                2: Container(
                  width: 100,
                  alignment: Alignment.center,
                  child: Text(
                    "Tab 2",
                    style: TextStyle(
                        color: selectedIndex == 2 ? Colors.white : Colors.blue),
                  ),
                ),
              },
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.white,
              pressedColor: Colors.white,
              padding: EdgeInsets.all(20),
              borderColor: Colors.blue,
            ),
            returnSelectedPage(selectedIndex),
          ],
        ),
      ),
    );
  }
}

Widget returnSelectedPage(int index) {
  switch (index) {
    case 0:
      return Expanded(
        child: Center(
          child: Text(
            "Tab 0",
            textScaleFactor: 1.5,
          ),
        ),
      );
      break;
    case 1:
      return Expanded(
        child: Center(
          child: Text(
            "Tab 1",
            textScaleFactor: 1.5,
          ),
        ),
      );
      break;

    case 2:
      return Expanded(
        child: Center(
          child: Text(
            "Tab 2",
            textScaleFactor: 1.5,
          ),
        ),
      );
      break;
    default:
      return null;
  }
}
