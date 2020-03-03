import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Carrd with ChangeNotifier {
  final id;
  final category; 
  final difficulty;
  final type;
  final language; 
  final word; 
  final notAllowed; 
  final privacy; 
  final authorId;

Carrd({
  @required this.id,
  @required this.category,
  @required this.difficulty,
  @required this.type,
  @required this.language,
  @required this.word,
  this.notAllowed,
  @required this.privacy,
  @required this.authorId,
});

}