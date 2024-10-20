import 'package:flutter/material.dart';
import 'package:flutter_prefs/src/widgets/preference.dart';

class OptionsPref<T> extends Preference<T> {
  const OptionsPref({super.key, required super.title, required super.prefKey});

  @override
  State<Preference<T>> createState() => _OptionsPrefState();
}

class _OptionsPrefState<T> extends State<OptionsPref<T>> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
