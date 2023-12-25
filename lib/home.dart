import 'package:flutter/material.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: Add state variables and functions
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
      body: Center(
        child: Center(
          child: Text('Let\'s get cooking ! ',
              // 3
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.headline1),
        ),
      ),

      // ********************** NAVIGATION BAR *******
      // TODO: Add bottom navigation bar
      //navigation bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        // TODO: Set selected tab bar
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
