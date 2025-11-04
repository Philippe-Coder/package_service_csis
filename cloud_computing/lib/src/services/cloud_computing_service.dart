import 'package:flutter/cupertino.dart';
import '../models/cloud_model.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class CloudComputingService {
  static List<CloudComputingModel> getAll() => [
    CloudComputingModel(
      title: 'Migration Cloud',
      description: 'Transition sécurisée vers le cloud',
      icon: 'cloud_upload',
    ),
    CloudComputingModel(
      title: 'Infrastructure as a Service (IaaS)',
      description: 'Ressources informatiques à la demande',
      icon: 'cloud',
    ),
    CloudComputingModel(
      title: 'Platform as a Service (PaaS)',
      description: 'Environnements de développement cloud',
      icon: 'cloud_queue',
    ),
    CloudComputingModel(
      title: 'Cloud Hybride',
      description: 'Intégration cloud public et privé',
      icon: 'cloud_sync',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.arrow_up_right_circle,
      title: 'Scalabilité Illimitée',
      description:
          'Adaptez vos ressources en temps réel selon vos besoins sans investissement initial.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.money_dollar_circle,
      title: 'Optimisation des Coûts',
      description:
          'Payez uniquement pour ce que vous utilisez avec une facturation à l\'usage flexible.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.layers_alt,
      title: 'Flexibilité Maximale',
      description:
          'Déployez vos applications sur plusieurs plateformes cloud (AWS, Azure, GCP).',
    ),
    AdvantageItem(
      icon: CupertinoIcons.checkmark_shield,
      title: 'Fiabilité Garantie',
      description:
          'Profitez d\'une disponibilité 99.9% avec redondance et sauvegarde automatique.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'Migration AWS',
      description:
          'Infrastructure complète migrée vers AWS avec réduction de 40% des coûts.',
      imagePlaceholder: 'aws_migration',
    ),
    ProjectItem(
      title: 'Plateforme Multi-Cloud',
      description:
          'Solution hybride Azure/GCP pour haute disponibilité et répartition de charge.',
      imagePlaceholder: 'multi_cloud',
    ),
    ProjectItem(
      title: 'Architecture Serverless',
      description:
          'Application microservices avec Lambda et API Gateway pour scalabilité automatique.',
      imagePlaceholder: 'serverless',
    ),
  ];
}
