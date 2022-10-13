import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int? selectedIndex;

  var pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                        print(selectedIndex);
                      });
                    },
                    child: Container(
                      color: Colors.blue,
                      child: Text('Button1'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                        print(selectedIndex);
                      });
                    },
                    child: Container(
                      color: Colors.blue,
                      child: Text('Button2'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                        print(selectedIndex);
                      });
                    },
                    child: Container(
                      color: selectedIndex == 3 ? Colors.blue : Colors.green,
                      child: Text('Button3'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          selectedIndex == 0
              ? Container(
                  height: 200,
                  color: Colors.green,
                )
              : Container(),
          selectedIndex == 1
              ? Container(
                  height: 200,
                  color: Colors.red,
                )
              : Container(),
          selectedIndex == 2
              ? Container(
                  height: 200,
                  color: Colors.orange,
                )
              : Container(),
          pages[selectedIndex ?? 0]
        ],
      ),
    );
  }
}
