import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  final String imageUrl;
  final String? overlayText;

  const ImageTile({
    super.key,
    required this.imageUrl,
    this.overlayText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            imageUrl,
            height: 70,
            width: 70,
            fit: BoxFit.cover,
          ),
        ),
        if (overlayText != null)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Text(
                overlayText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}