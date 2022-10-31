import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My first App",
          ),
          backgroundColor: Colors.grey.shade400,
          foregroundColor: Colors.blue,
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  color: Colors.red.shade300,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.yellow,
                        ),
                        onPressed: () {
                          setState(() {
                            if (buttonName == "clicked") {
                              buttonName = "click";
                            } else {
                              buttonName = "clicked";
                            }
                          });
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            if (buttonName == "clicked") {
                              buttonName = "click";
                            } else {
                              buttonName = "clicked";
                            }
                          });
                        },
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                )
              : Image.asset(
                  width: 300,
                  'images/ahmedAli.jpg',
                ),
          // : Image.network(
          //     "https://pixabay.com/images/search/png/",
          //   ),
          // child: SizedBox(
          //   height: double.infinity,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           foregroundColor: Colors.blue,
          //           backgroundColor: Colors.yellow,
          //         ),
          //         onPressed: () {
          //           setState(() {
          //             if (buttonName == "clicked") {
          //               buttonName = "click";
          //             } else {
          //               buttonName = "clicked";
          //             }
          //           });
          //         },
          //         child: Text(buttonName),
          //       ),
          //       ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.yellow,
          //           foregroundColor: Colors.blue,
          //         ),
          //         onPressed: () {
          //           setState(() {
          //             if (buttonName == "clicked") {
          //               buttonName = "click";
          //             } else {
          //               buttonName = "clicked";
          //             }
          //           });
          //         },
          //         child: Text(buttonName),
          //       ),
          //     ],
          //   ),
          // ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.start,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           if (buttonName == "clicked") {
          //             buttonName = "click";
          //           } else {
          //             buttonName = "clicked";
          //           }
          //         });
          //       },
          //       child: Text(buttonName),
          //     ),
          //     ElevatedButton(
          //       onPressed: () {
          //         setState(() {
          //           if (buttonName == "clicked") {
          //             buttonName = "click";
          //           } else {
          //             buttonName = "clicked";
          //           }
          //         });
          //       },
          //       child: Text(buttonName),
          //     ),
          //   ],
          // ),

          // child: Text(
          //   "This is the body.",
          //   style: TextStyle(color: Colors.blue),
          // ),
        ),
        // bottomNavigationBar: BottomAppBar(
        //   child: Text(
        //     "Bottom Bar",
        //     style: TextStyle(color: Colors.blue),
        //   ),
        //   color: Colors.grey.shade400,
        // ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.add_a_photo_outlined,
                  // color: Colors.yellow,
                  size: 30,
                )),
            BottomNavigationBarItem(
              label: "add-call",
              icon: Icon(
                Icons.add_ic_call_rounded,
                // color: Colors.yellow,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              label: "add-reaction",
              icon: Icon(
                Icons.add_reaction,
                // color: Colors.yellow,
                size: 30,
              ),
            ),
          ],
          backgroundColor: Colors.grey.shade400,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        backgroundColor: Colors.grey.shade300,
      ),
    );
  }
}
