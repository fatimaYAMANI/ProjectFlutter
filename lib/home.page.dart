import 'package:flutter/material.dart';
import 'package:application/Screens/cards.view.dart';
import 'package:application/Screens/home.view.dart';
import 'package:application/Screens/login.view.dart';
import 'package:application/Screens/profile.view.dart';


class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget>pages=[
    HomeView(),
    LoginView(),
    CardsView(),
    ProfileView()
  ];
  void changePage(int selectedIndex){
    setState((){
      currentIndex=selectedIndex;
    });
  }
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(title: Text("My App :)", style: TextStyle(fontSize: 30, color: Colors.white),
      ),
      backgroundColor:Theme.of(context).colorScheme.primary,
      ),
      body:SafeArea(
        child: Padding(padding: EdgeInsets.all(16.0), child : IndexedStack(
          index:currentIndex,
          children: pages,
        ),),
        
      ),
      bottomNavigationBar:
       BottomNavigationBar(
        type: BottomNavigationBarType.fixed, 
       backgroundColor: Color(0xFF393E46),
       unselectedItemColor:Colors.white,
       selectedItemColor: Color(0xFF00ADB5),
       currentIndex:currentIndex,
       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.login),label: "Login"),
        BottomNavigationBarItem(icon: Icon(Icons.map),label: "Card"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "PRofile"),
       ],
       onTap: changePage ,
       ),

    );
  }
}