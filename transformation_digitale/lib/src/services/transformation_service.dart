import 'package:flutter/cupertino.dart';
import '../models/transformation_digitale_model.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class TransformationDigitaleService {
  static List<TransformationDigitaleModel> getAll() => [
    TransformationDigitaleModel(
      title: 'Stratégie Digitale',
      description: 'Définition de votre feuille de route numérique',
      icon: 'trending_up',
    ),
    TransformationDigitaleModel(
      title: 'Automatisation des Processus',
      description: 'Optimisation par l\'automatisation',
      icon: 'auto_awesome',
    ),
    TransformationDigitaleModel(
      title: 'Intelligence Artificielle',
      description: 'Solutions IA pour votre entreprise',
      icon: 'psychology',
    ),
    TransformationDigitaleModel(
      title: 'Data Analytics',
      description: 'Exploitation de vos données pour la décision',
      icon: 'analytics',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.chart_bar,
      title: 'Innovation Stratégique',
      description:
          'Identifiez et implémentez les technologies qui transforment votre business model.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.person_2,
      title: 'Accompagnement Humain',
      description:
          'Formation et conduite du changement pour garantir l\'adoption par vos équipes.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.speedometer,
      title: 'Agilité Opérationnelle',
      description:
          'Automatisez vos processus métier pour gagner en rapidité et en efficacité.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.graph_circle,
      title: 'ROI Mesurable',
      description:
          'KPI et tableaux de bord pour suivre l\'impact de votre transformation.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'Digital Workplace',
      description:
          'Plateforme collaborative Microsoft 365 pour 500 utilisateurs avec adoption 95%.',
      imagePlaceholder: 'digital_workplace',
    ),
    ProjectItem(
      title: 'E-commerce B2B',
      description:
          'Portail client connecté à l\'ERP avec augmentation 200% des commandes en ligne.',
      imagePlaceholder: 'ecommerce',
    ),
    ProjectItem(
      title: 'Automatisation RH',
      description:
          'Workflow de recrutement automatisé réduisant de 60% le temps de traitement.',
      imagePlaceholder: 'automation',
    ),
  ];
}
