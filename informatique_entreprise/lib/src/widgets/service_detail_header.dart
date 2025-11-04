import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ServiceDetailHeader extends StatelessWidget {
  final String title;
  final String description;
  final String imagePlaceholder;

  const ServiceDetailHeader({
    super.key,
    required this.title,
    required this.description,
    required this.imagePlaceholder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image/Vidéo d'en-tête
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: Icon(
                  CupertinoIcons.play_circle_fill,
                  size: 64,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
              ),
              Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'Vidéo démo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        // Titre
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C1C1E),
          ),
        ),
        const SizedBox(height: 12),
        // Description
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.grey[600], height: 1.6),
        ),
      ],
    );
  }
}
