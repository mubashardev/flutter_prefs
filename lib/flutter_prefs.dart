library flutter_prefs;

import 'package:flutter/material.dart';
import 'package:flutter_prefs/flutter_prefs.dart';
export 'package:flutter_prefs/src/widgets/preference.dart';

class PreferencesLayout extends StatelessWidget {
  final List<Preference> preferences;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: preferences,
    );
  }

  const PreferencesLayout({
    super.key,
    required this.preferences,
  });
}
