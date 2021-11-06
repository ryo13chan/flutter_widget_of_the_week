// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_switch/flutter_switch.dart';

class ThemeSwitch extends StatelessWidget {
  final bool value;
  final void Function() onToggle;
  const ThemeSwitch(this.value, this.onToggle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 60.0,
      value: value,
      borderRadius: 30.0,
      padding: 2.0,
      activeToggleColor: const Color(0xFF6E40C9),
      inactiveToggleColor: const Color(0xFF2F363D),
      activeColor: const Color(0xFF271052),
      inactiveColor: Colors.white,
      activeIcon: const Icon(
        Icons.nightlight_round,
        color: Color(0xFFF8E3A1),
      ),
      inactiveIcon: const Icon(
        Icons.wb_sunny,
        color: Color(0xFFFFDF5D),
      ),
      onToggle: (_) => onToggle(),
    );
  }
}
