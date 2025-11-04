import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../services/operations_infrastructure_service.dart';
import '../widgets/service_detail_header.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';
import '../widgets/quote_button.dart';

class OperationsInfrastructurePage extends StatelessWidget {
  const OperationsInfrastructurePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Utilisation des services du package
    final advantages = OperationInfrastructureService.getAdvantages();
    final projects = OperationInfrastructureService.getProjects();

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
          'Opérations d\'Infrastructure',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
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
                  ServiceDetailHeader(
                    title: 'Gestion Complète de votre Infrastructure',
                    description:
                        'Optimisez et sécurisez votre infrastructure IT avec nos solutions de monitoring, maintenance et gestion de serveurs. Nous assurons la disponibilité et les performances de vos systèmes critiques.',
                    imagePlaceholder: 'operations_infra',
                  ),
                  const SizedBox(height: 40),
                  AdvantagesSection(advantages: advantages),
                  const SizedBox(height: 40),
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
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
