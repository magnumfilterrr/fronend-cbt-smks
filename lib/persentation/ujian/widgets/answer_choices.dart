import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

enum AnswerCorrection { none, selected }

class AnswerChoices extends StatelessWidget {
  final String label;
  final String? imageUrl;
  final void Function(String value) onChanged;
  final bool isSelected;
  final AnswerCorrection answerCorrection;

  const AnswerChoices({
    super.key,
    required this.label,
    this.imageUrl,
    required this.onChanged,
    this.isSelected = false,
    this.answerCorrection = AnswerCorrection.none,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(label),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: isSelected ? AppColors.lightGreen : AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Image.network(
                  imageUrl!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 100),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  decoration: ShapeDecoration(
                    color: isSelected ? AppColors.lightRed : AppColors.white,
                    shape: OvalBorder(
                      side: BorderSide(
                          width: isSelected ? 0 : 2, color: AppColors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
