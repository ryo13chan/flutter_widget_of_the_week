// Flutter imports:
import 'package:flutter/material.dart';

class WidgetDetailCopyButton extends StatelessWidget {
  final void Function(String) onPress;
  final String text;
  const WidgetDetailCopyButton(this.onPress, this.text, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Text('コピー'),
      style: OutlinedButton.styleFrom(
        primary: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: const BorderSide(),
      ),
      onPressed: () => onPress(text),
    );
  }
}
