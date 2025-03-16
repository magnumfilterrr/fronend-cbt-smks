import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomTextField<T> extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final bool isDropdown;
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final Function(T?)? onDropdownChanged;

  const CustomTextField({
    super.key,
    this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.isDropdown = false,
    this.items,
    this.value,
    this.onDropdownChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 60.0,
      color: AppColors.light,
      child: isDropdown
          ? DropdownButtonFormField<T>(
              value: value,
              items: items,
              onChanged: onDropdownChanged,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                labelText: label,
                labelStyle: const TextStyle(color: AppColors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide.none,
                ),
              ),
            )
          : TextFormField(
              controller: controller,
              onChanged: onChanged,
              obscureText: obscureText,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                labelText: label,
                labelStyle: const TextStyle(color: AppColors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
    );
  }
}
