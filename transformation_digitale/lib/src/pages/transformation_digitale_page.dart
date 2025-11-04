import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../services/transformation_service.dart';
import '../widgets/service_detail_header.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/quote_button.dart';

class TransformationDigitalePage extends StatelessWidget {
  const TransformationDigitalePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Utilisation des services du package
    // Utilisation des services du package
    final advantages = TransformationDigitaleService.getAdvantages();
    final projects = TransformationDigitaleService.getProjects();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back, color: Color(0xFF007AFF)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Transformation Digitale',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ServiceDetailHeader(
                    title: 'Transformation Digitale',
                    description:
                        'Accélérez votre transformation numérique avec une stratégie sur mesure. Modernisation des processus, adoption de nouvelles technologies et accompagnement du changement.',
                    imagePlaceholder: 'transformation_header',
                  ),
                  const SizedBox(height: 32),
                  AdvantagesSection(advantages: advantages),
                  const SizedBox(height: 32),
                  ProjectsSection(projects: projects),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
          QuoteButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Demande de devis envoyée !'),
                  backgroundColor: Color(0xFF007AFF),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
