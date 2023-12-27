import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // TODO: Add state variables and functions
//  **********************
  //Before you can let the user switch between tab bar items, you need to know which index they selected
  int _selectedIndex = 0; // this tells with index user selected
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    Container(color: Colors.orange),
    // TODO: Replace with Card2
    Container(color: Colors.yellowAccent),
    // TODO: Replace with Card3
    Container(color: Colors.pink)
  ];
// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }
    );
  }
  // **********************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Fooderlich',
            // 2
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
      // TODO: Show selected tab

      body:  pages[_selectedIndex],


      // ********************** NAVIGATION BAR *******
      // TODO: Add bottom navigation bar
      //navigation bar added
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,


        // TODO: Set selected tab bar
        // **********************
        //indicate to the user which tab bar item they currently have selected.
        //currentIndex will tell the bottom navigation bar which tab bar item to highlight.
        // TODO: check how current index tells the bottom nav to highlight....?
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        // **********************
        // 6


        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
      // ********************** NAVIGATION BAR *******
    );
  }
}
