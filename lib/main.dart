import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.pink,
      ),
      home: MyBottomNavigation()
    );
  }
}

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationState createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  List<Widget> myWidgets= [Page1(), Page2(), Page3(), Page4()];
  int index =0;

  void updateUI(int newVal)
  {
    setState(() {
      index= newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Example"),), // AppBar
      body: myWidgets[index], // body

      bottomNavigationBar: BottomNavigationBar(// BottomNavigationBar
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.shifting,
        //iconSize: 50,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Music', ),
          BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Star'),
          BottomNavigationBarItem(icon: Icon(Icons.cake), label: 'Cake'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'Restaurant')
        ],
       currentIndex: index,
       onTap:updateUI
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(' We are in Page One',style: TextStyle(fontSize: 24),),
          Icon(Icons.music_note, size: 50, color: Colors.teal,)
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' We are in Page two', style: TextStyle(fontSize: 24),),
          Icon(Icons.star, size: 50, color: Colors.amber,)
        ],
      ),
    );
  }
}
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' We are in Page Three', style: TextStyle(fontSize: 24),),
          Icon(Icons.cake, size: 50, color: Colors.deepPurple,)
        ],
      ),
    );
  }
}
class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(' We are in Page Four',style: TextStyle(fontSize: 24),),
          Icon(Icons.restaurant, size: 50, color: Colors.pink,)
        ],
      ),
    );
  }
}