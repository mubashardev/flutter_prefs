import 'package:flutter/material.dart';
import 'package:flutter_prefs/src/widgets/preference.dart';

class ChecksPref<T> extends Preference<T> {
  const ChecksPref({super.key, required super.title, required super.prefKey});

  @override
  State<Preference<T>> createState() => _ChecksPrefState();
}

class _ChecksPrefState<T> extends State<ChecksPref<T>> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
