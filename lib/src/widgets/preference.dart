import 'package:flutter/material.dart';

export 'package:flutter_prefs/src/utils/pref_value.dart';

export 'checks_pref.dart';
export 'options_pref.dart';
export 'switch_pref.dart';
export 'textfield_pref.dart';

abstract class Preference<T> extends StatefulWidget {
  final String title;
  final String prefKey;

  const Preference({super.key, required this.title, required this.prefKey});

  @override
  State<Preference<T>> createState();
}
