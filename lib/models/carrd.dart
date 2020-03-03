import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Carrd with ChangeNotifier {
  final id;
  final category; 
  final difficulty;
  final type;
  final language; 
  final word; 
  final t1; 
  final t2; 
  final t3; 
  final t4; 
  final t5; 
  final privacy; 
  final authorId;

Carrd({
  @required this.id,
  @required this.category,
  @required this.difficulty,
  @required this.type,
  @required this.language,
  @required this.word,
  this.t1,
  this.t2,
  this.t3,
  this.t4,
  this.t5,
  @required this.privacy,
  @required this.authorId,
});

}