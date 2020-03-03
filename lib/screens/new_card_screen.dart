import 'package:flutter/material.dart';
import '../screens/new_draw_screen.dart';
import '../screens/new_pantomime_screen.dart';
import '../widgets/language_selection.dart';
import '../widgets/privacy_selection.dart';
import '../widgets/difficulty_selection.dart';
import '../models/carrd.dart';

class NewCardScreen extends StatefulWidget {
  @override
  _NewCardScreenState createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
  void startAddNewDraw(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return NewDrawScreen();
    }));
  }

  void startAddNewPantomime(BuildContext ctx) {
    Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (_) {
      return NewPantomimeScreen();
    }));
  }

  final _cardFocusNode1 = FocusNode();
  final _cardFocusNode2 = FocusNode();
  final _cardFocusNode3 = FocusNode();
  final _cardFocusNode4 = FocusNode();
  final _cardFocusNode5 = FocusNode();
  final _cardFocusNode6 = FocusNode();

  final _form = GlobalKey<FormState>();

  var _savedCard = Carrd(
    id: null,
    category: null,
    difficulty: null,
    type: 'card',
    language: null,
    word: '',
    t1: '',
    t2: '',
    t3: '',
    t4: '',
    t5: '',
    privacy: null,
    authorId: null,
  );

  void _saveCard() {
    _form.currentState.save();
  }

  @override
  void dispose() {
    _cardFocusNode1.dispose();
    _cardFocusNode2.dispose();
    _cardFocusNode3.dispose();
    _cardFocusNode4.dispose();
    _cardFocusNode5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Word Card'),
      ),
//      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Create Word Card',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    child: Text('Create Drawing Card'),
                    onTap: () => startAddNewDraw(context),
                  ),
                  GestureDetector(
                    child: Text('Create Pantomime Card'),
                    onTap: () => startAddNewPantomime(context),
                  ),
                ],
              ),
              Form(
                key: _form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Word'),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(_cardFocusNode1);
                      },
                      onSaved: (value) {
                        _savedCard = Carrd(
                          id: null,
                          category: _savedCard.category,
                          difficulty: _savedCard.difficulty,
                          type: 'card',
                          language: _savedCard.language,
                          word: value,
                          t1: _savedCard.t1,
                          t2: _savedCard.t2,
                          t3: _savedCard.t3,
                          t4: _savedCard.t4,
                          t5: _savedCard.t5,
                          privacy: _savedCard.privacy,
                          authorId: null,
                        );
                      },
                    ),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Taboo word 1'),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_cardFocusNode2);
                        },
                        focusNode: _cardFocusNode1,
                        onSaved: (value) {
                          _savedCard = Carrd(
                            id: null,
                            category: _savedCard.category,
                            difficulty: _savedCard.difficulty,
                            type: 'card',
                            language: _savedCard.language,
                            word: _savedCard.word,
                            t1: value,
                            t2: _savedCard.t2,
                            t3: _savedCard.t3,
                            t4: _savedCard.t4,
                            t5: _savedCard.t5,
                            privacy: _savedCard.privacy,
                            authorId: null,
                          );
                        }),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Taboo word 2'),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_cardFocusNode3);
                        },
                        focusNode: _cardFocusNode2,
                        onSaved: (value) {
                          _savedCard = Carrd(
                            id: null,
                            category: _savedCard.category,
                            difficulty: _savedCard.difficulty,
                            type: 'card',
                            language: _savedCard.language,
                            word: _savedCard.word,
                            t1: _savedCard.t1,
                            t2: value,
                            t3: _savedCard.t3,
                            t4: _savedCard.t4,
                            t5: _savedCard.t5,
                            privacy: _savedCard.privacy,
                            authorId: null,
                          );
                        }),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Taboo word 3'),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_cardFocusNode4);
                        },
                        focusNode: _cardFocusNode3,
                        onSaved: (value) {
                          _savedCard = Carrd(
                            id: null,
                            category: _savedCard.category,
                            difficulty: _savedCard.difficulty,
                            type: 'card',
                            language: _savedCard.language,
                            word: _savedCard.word,
                            t1: _savedCard.t1,
                            t2: _savedCard.t2,
                            t3: value,
                            t4: _savedCard.t4,
                            t5: _savedCard.t5,
                            privacy: _savedCard.privacy,
                            authorId: null,
                          );
                        }),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Taboo word 4'),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_cardFocusNode5);
                        },
                        focusNode: _cardFocusNode4,
                        onSaved: (value) {
                          _savedCard = Carrd(
                            id: null,
                            category: _savedCard.category,
                            difficulty: _savedCard.difficulty,
                            type: 'card',
                            language: _savedCard.language,
                            word: _savedCard.word,
                            t1: _savedCard.t1,
                            t2: _savedCard.t2,
                            t3: _savedCard.t3,
                            t4: value,
                            t5: _savedCard.t5,
                            privacy: _savedCard.privacy,
                            authorId: null,
                          );
                        }),
                    TextFormField(
                        decoration: InputDecoration(labelText: 'Taboo word 5'),
                        textInputAction: TextInputAction.next,
                        focusNode: _cardFocusNode5,
                        onSaved: (value) {
                          _savedCard = Carrd(
                            id: null,
                            category: _savedCard.category,
                            difficulty: _savedCard.difficulty,
                            type: 'card',
                            language: _savedCard.language,
                            word: _savedCard.word,
                            t1: _savedCard.t1,
                            t2: _savedCard.t2,
                            t3: _savedCard.t3,
                            t4: _savedCard.t4,
                            t5: value,
                            privacy: _savedCard.privacy,
                            authorId: null,
                          );
                        }),
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
                      onPressed: _saveCard,
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
                // padding: EdgeInsets.only(
                // top: 10,
                //left: 10,
                // right: 10,
                // bottom: MediaQuery.of(context).viewInsets.bottom + 10,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
