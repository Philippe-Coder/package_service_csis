import 'package:flutter/cupertino.dart';
import '../models/cybersecurity_model.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class CybersecurityService {
  static List<CybersecurityModel> getAll() => [
    CybersecurityModel(
      title: 'Audit de Sécurité',
      description: 'Évaluation complète de votre sécurité',
      icon: 'security',
    ),
    CybersecurityModel(
      title: 'Pare-feu & Protection',
      description: 'Solutions de protection réseau avancées',
      icon: 'shield',
    ),
    CybersecurityModel(
      title: 'Gestion des Accès',
      description: 'Contrôle d\'accès et authentification',
      icon: 'vpn_key',
    ),
    CybersecurityModel(
      title: 'Formation Sécurité',
      description: 'Sensibilisation de vos équipes',
      icon: 'school',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.shield_lefthalf_fill,
      title: 'Protection Proactive',
      description:
          'Détection et prévention des menaces avant qu\'elles n\'impactent votre activité.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.eye,
      title: 'Surveillance 24/7',
      description:
          'Monitoring continu de votre infrastructure avec alertes en temps réel.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.checkmark_seal_fill,
      title: 'Conformité Garantie',
      description:
          'Respect des normes RGPD, ISO 27001, et autres standards de sécurité.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.person_2_square_stack,
      title: 'Formation Équipes',
      description:
          'Sensibilisation et formation de vos collaborateurs aux bonnes pratiques.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'SOC Managé',
      description:
          'Centre opérations sécurité pour banque avec détection incidents 99.8%.',
      imagePlaceholder: 'soc',
    ),
    ProjectItem(
      title: 'Pentest Infrastructure',
      description:
          'Audit sécurité complet avec 25 vulnérabilités critiques corrigées.',
      imagePlaceholder: 'pentest',
    ),
    ProjectItem(
      title: 'Plan Continuité Activité',
      description:
          'PCA/PRA avec sauvegarde et restauration < 4h pour e-commerce.',
      imagePlaceholder: 'pca',
    ),
  ];
}
