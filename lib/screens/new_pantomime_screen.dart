import 'package:flutter/material.dart';

import 'new_card_screen.dart';
import '../screens/new_draw_screen.dart';
import '../widgets/language_selection.dart';
import '../widgets/privacy_selection.dart';
import '../widgets/difficulty_selection.dart';

class NewPantomimeScreen extends StatefulWidget {
  @override
  _NewPantomimeScreenState createState() => _NewPantomimeScreenState();
}

class _NewPantomimeScreenState extends State<NewPantomimeScreen> {
  void startAddNewCard(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return NewCardScreen();
    }));
  }

  void startAddNewDraw(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return NewDrawScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Pantomime Card'),
      ),
//      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Create Word Card'),
                    onTap: () => startAddNewCard(context),
                  ),
                  GestureDetector(
                    child: Text('Create Drawing Card'),
                    onTap: () => startAddNewDraw(context),
                  ),
                  Text(
                    'Create Pantomime Card',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Word'),
                      textInputAction: TextInputAction.next,
                    ),
                    Row(
                      children: <Widget>[
                        Text('What language is this card in?'),
                        LanguageDropdown(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Who can play with this card?'),
                        PrivacyDropdown(),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('How difficult is this card?'),
                        DifficultyDropdown(),
                      ],
                    ),
                    RaisedButton(
                      onPressed: () {
                        print('Button Clicked');
                      },
                      child: Text(
                        'Create',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      color: Colors.blueAccent,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
