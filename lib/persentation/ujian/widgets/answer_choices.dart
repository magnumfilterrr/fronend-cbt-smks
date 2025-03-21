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
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return SizedBox(
                      width: 100,
                      height: 100,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 100),
                ),
              ),
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Agar teks sejajar atas
              children: [
                Expanded(
                  // Membantu teks wrap ke bawah
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    softWrap: true, // Pastikan teks bisa wrap ke bawah
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
