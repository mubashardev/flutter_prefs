import 'package:flutter/material.dart';
import 'package:flutter_prefs/flutter_prefs.dart';
import 'package:flutter_prefs/src/utils/helper.dart';

class TextfieldPref<T> extends Preference<T> {
  const TextfieldPref(
      {super.key,
      required super.title,
      required super.prefKey,
      this.emptySummary = "Click here to set",
      this.dialogTitle = "Update value",
      this.dialogHint = ''});

  final String emptySummary;
  final String dialogTitle;
  final String dialogHint;

  @override
  State<Preference<T>> createState() => _TextfieldPrefState();
}

class _TextfieldPrefState<T> extends State<TextfieldPref<T>> {
  String? oldValue;

  @override
  Widget build(BuildContext context) {
    oldValue = PreferencesHelper.instance.read<String>(widget.prefKey);
    var controller = TextEditingController(text: oldValue);

    return ListTile(
      title: Text(widget.title),
      subtitle: Text(oldValue ?? widget.emptySummary),
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text(widget.dialogTitle),
            content: TextFormField(
              controller: controller,
              decoration: InputDecoration(hintText: widget.dialogHint),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Dismiss"),
              ),
              TextButton(
                onPressed: () {
                  var newValue = controller.text;
                  PreferencesHelper.saveValue(widget.prefKey, newValue);
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text(oldValue == null ? "Set" : "Update"),
              ),
            ],
          ),
        );
      },
    );
  }
}
