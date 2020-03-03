import 'package:flutter/material.dart';

import '../screens/categories_screen.dart';
import '../screens/multiplayer_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  void goToCategories(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoriesScreen();
    }));
  }

  void goToMultiplayer(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return MultiplayerScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Settings',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Text(
              'Go to category selection',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () => goToCategories(context),
          ),
          GestureDetector(
            child: Text(
              'Multiplayer/Add users',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onTap: () => goToMultiplayer(context),
          ),
          ExpansionTile(
            title: Text("Difficulty"),
            children: <Widget>[
              Text("Show cards of the following difficultie(s):"),
              SwitchListTile(
                title: const Text('Easy'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('Medium'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('Hard'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Categories"),
            children: <Widget>[
              ExpansionTile(
                title: Text("Show"),
                children: <Widget>[
                  SwitchListTile(
                    title: const Text('Easy'),
                    value: false,
                    //onChanged: (bool value) { setState(() { on = value; }); },
                    //secondary: const Icon(Icons.lightbulb_outline),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text("Show2"),
              ),
            ],
          ),

          //           children: <Widget>[ListView(
          //       children: <Widget>[ExpansionTile(
          //           title: Text("Politics"), //trailing: Checkbox(value: false,),
          //          children: <Widget>[ExpansionTile(
          //        title: Text("US contemporary"), //trailing: Checkbox(value: false,),
          //      children: <Widget>[
          //      Text("Show cards of the following difficultie(s):"),
          //    SwitchListTile(
          //    title: const Text('Easy'),
          //  value: false,
          //onChanged: (bool value) { setState(() { on = value; }); },
          // secondary: const Icon(Icons.lightbulb_outline),
          //),],

          ExpansionTile(
            title: Text("Type of cards"),
            children: <Widget>[
              Text("Show cards of the following type(s):"),
              SwitchListTile(
                title: const Text('taboo'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('draw'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('pantomime'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('Exclude user generated content'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Number of cards dealt per countdown"),
            children: <Widget>[
              SwitchListTile(
                title: const Text('1 per countdown'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('as many as possible'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Multiplayer/add users"),
            children: <Widget>[
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Option 2"),
            children: <Widget>[
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Time limit/countdown"),
            children: <Widget>[
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
              SwitchListTile(
                title: const Text('This on'),
                value: false,
                //onChanged: (bool value) { setState(() { on = value; }); },
                // secondary: const Icon(Icons.lightbulb_outline),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
