import 'package:flutter/cupertino.dart';
import '../models/operation_infrastructure_model.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class OperationInfrastructureService {
  static List<OperationInfrastructureModel> getAll() => [
    OperationInfrastructureModel(
      title: 'Monitoring & Supervision',
      description: 'Surveillance 24/7 de votre infrastructure',
      icon: 'monitor_heart',
    ),
    OperationInfrastructureModel(
      title: 'Gestion des Serveurs',
      description: 'Administration et maintenance de vos serveurs',
      icon: 'dns',
    ),
    OperationInfrastructureModel(
      title: 'Sauvegarde & Récupération',
      description: 'Protection de vos données critiques',
      icon: 'backup',
    ),
    OperationInfrastructureModel(
      title: 'Optimisation des Performances',
      description: 'Amélioration continue de votre infrastructure',
      icon: 'speed',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.time,
      title: 'Surveillance Continue',
      description:
          'Monitoring 24/7 avec alertes en temps réel pour une réactivité maximale.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.arrow_up_circle,
      title: 'Haute Disponibilité',
      description: 'Infrastructure redondante garantissant un uptime de 99.9%.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.shield_lefthalf_fill,
      title: 'Sécurité Renforcée',
      description:
          'Sauvegardes automatiques et plans de reprise après sinistre.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.graph_circle,
      title: 'Performance Optimisée',
      description:
          'Analyse continue et optimisation proactive de vos ressources.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'Data Center Migration',
      description: 'Migration de 200 serveurs avec zéro downtime sur 3 mois.',
      imagePlaceholder: 'datacenter_migration',
    ),
    ProjectItem(
      title: 'Monitoring Solution',
      description:
          'Plateforme de supervision centralisée pour infrastructure multi-sites.',
      imagePlaceholder: 'monitoring',
    ),
    ProjectItem(
      title: 'Backup Strategy',
      description:
          'Solution de sauvegarde incrémentale avec RPO < 1h et RTO < 4h.',
      imagePlaceholder: 'backup',
    ),
  ];
}
