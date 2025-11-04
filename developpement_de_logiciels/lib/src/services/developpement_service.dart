import 'package:flutter/cupertino.dart';
import '../models/developpement_logiciel.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class DeveloppementLogicielService {
  static List<DeveloppementLogicielModel> getAll() => [
    DeveloppementLogicielModel(
      title: 'Applications Web',
      description: 'Développement d\'applications web modernes',
      icon: 'web',
    ),
    DeveloppementLogicielModel(
      title: 'Applications Mobiles',
      description: 'Apps iOS et Android natives et cross-platform',
      icon: 'phone_android',
    ),
    DeveloppementLogicielModel(
      title: 'Logiciels sur Mesure',
      description: 'Solutions personnalisées pour vos besoins',
      icon: 'settings_applications',
    ),
    DeveloppementLogicielModel(
      title: 'APIs & Microservices',
      description: 'Architecture moderne et scalable',
      icon: 'api',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.hammer,
      title: 'Solutions Sur Mesure',
      description:
          'Développement personnalisé adapté à vos processus métier spécifiques.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.device_phone_portrait,
      title: 'Multi-Plateforme',
      description:
          'Applications web, mobile (iOS/Android) et desktop avec une seule codebase.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.arrow_2_squarepath,
      title: 'Méthode Agile',
      description:
          'Sprints courts, livraisons fréquentes et adaptation continue aux besoins.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.checkmark_seal,
      title: 'Qualité Garantie',
      description:
          'Tests automatisés, revue de code et documentation complète inclus.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'Application Mobile E-santé',
      description:
          'App Flutter iOS/Android pour suivi patients avec 50K+ utilisateurs actifs.',
      imagePlaceholder: 'esante_app',
    ),
    ProjectItem(
      title: 'Plateforme SaaS Gestion',
      description:
          'Solution web React + Node.js pour gestion multi-entreprises (200 clients).',
      imagePlaceholder: 'saas_platform',
    ),
    ProjectItem(
      title: 'API Gateway Microservices',
      description:
          'Architecture distribuée avec Spring Boot gérant 10M requêtes/jour.',
      imagePlaceholder: 'api_gateway',
    ),
  ];
}
