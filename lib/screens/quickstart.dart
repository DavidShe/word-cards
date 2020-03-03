import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../widgets/language_selection.dart';
import '../screens/new_card_screen.dart';

import '../screens/new_draw_screen.dart';


class Quickstart extends StatelessWidget {
  void _startAddNewCard(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return NewCardScreen();
    }));
//    showModalBottomSheet(
//      context: ctx,
//      builder: (_) {
//        return GestureDetector(
//          onTap: () {},
//          child: NewCard(),
//          behavior: HitTestBehavior.opaque,
//        );
  }
//    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quickstart'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            LanguageDropdown(),
            Card(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.lens,
                    color: Colors.yellow,
                    size: 44.0,
                    semanticLabel: 'Color of team 1 is yellow',
                  ),
                  Text(
                    'Team 1',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Card(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.lens,
                    color: Colors.blue,
                    size: 44.0,
                    semanticLabel: 'Color of team 2 is blue',
                  ),
                  Text(
                    'Team 2',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            RaisedButton(
              onPressed: () {
                print('Button Clicked');
              },
              child: Text(
                'Start!',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              color: Colors.deepOrange,
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
            ),
            Card(
              child: Text('''
              Category: Politics
              Rounds: 5
              Difficulty: medium
              Timer: 30 seconds
              
              To change these settings, or for more options, go to Game settings in the menu'''),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewCard(context),
      ),
    );
  }
}
