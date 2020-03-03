import 'package:flutter/material.dart';

import '../screens/new_card_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  void _startAddNewCard(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return NewCardScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Selection'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Checkbox(value: false, onChanged: null),
            title: Text('Politics'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Checkbox(value: false, onChanged: null),
            title: Text('Television/Streaming'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewCard(context),
      ),
    );
  }
}
