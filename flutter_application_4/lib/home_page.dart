import 'package:flutter/material.dart';
import 'settings.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String buttonName = "Click";
  int currentIndex = 0;
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                color: Colors.red.shade500,
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => Settings(),
                          ),
                        );
                      },
                      child: Text(buttonName),
                    ),
                  ],
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: isClicked
                    ? Image.asset('images/ahmedAli.jpg')
                    : Image.network('https://pixabay.com/images/search/png/'),
              ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                // color: Colors.yellow,
                size: 30,
              )),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(
              Icons.settings,
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
    );
  }
}
