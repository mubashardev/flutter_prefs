import 'package:flutter/material.dart';
import 'package:flutter_prefs/src/utils/helper.dart';
import '../../flutter_prefs.dart';

class SwitchPref extends Preference<bool> {
  const SwitchPref(
      {super.key,
      required super.title,
      required super.prefKey,
      this.onChanged,
      this.defaultValue = false});

  final Function(bool)? onChanged;
  final bool defaultValue;

  @override
  State<Preference<bool>> createState() => _SwitchPrefState();
}

class _SwitchPrefState extends State<SwitchPref> {
  late bool userValue;

  @override
  void initState() {
    userValue = PreferencesHelper.getValue(widget.prefKey, widget.defaultValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(widget.title),
      value: userValue,
      onChanged: (value) {
        userValue = value;
        PreferencesHelper.saveValue(widget.prefKey, value);
        setState(() {});
        widget.onChanged?.call(value);
      },
    );
  }
}
