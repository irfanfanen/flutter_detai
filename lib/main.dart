import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Class", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0.0,
        ),
        backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("All"),
                    Container(height: 3, width: 19, color: Color(0xff2F80ED),)
                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Text("In-Progress", style: TextStyle(color: Colors.grey[400])),
                  ],
                ),
                SizedBox(width: 20,),
                Text("Completed", style: TextStyle(color: Colors.grey[400]),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  child: Image.asset("assets/images/sk.png", scale: 2,),
                  width: 80, 
                  height: 80, 
                  decoration: BoxDecoration(
                    color: Color(0xddFAFDFF),
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                    ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 140,
                      child: Text("Mastering UI Design with Sketch", style: TextStyle(color: Colors.black),),
                      ),
                    Text("Udacoding", style: TextStyle(color: Colors.grey[400])),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 190,
                              height: 5,
                              decoration: BoxDecoration(color: Color(0xffF5F9FE)),
                            ),
                            Container(
                              width: 180,
                              height: 5,
                              decoration: BoxDecoration(color: Color(0xff2F80ED)),
                            ),
                          ],
                        ),
                        SizedBox(width: 8,),
                        Text("90%", style: TextStyle(color: Colors.black))
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/Icon1.png"), color: Color(0xff2F80ED),), label: ""
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/Icon2.png"), color: Colors.grey,), label: ""
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/Icon3.png"), color: Colors.grey,), label: ""
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(AssetImage("assets/images/Icon4.png"), color: Colors.grey,), label: ""
        ),
      ]),
    );
  }
}
