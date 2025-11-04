import 'package:flutter/cupertino.dart';
import '../models/informatique_entreprise_model.dart';
import '../widgets/advantages_section.dart';
import '../widgets/projects_section.dart';

class InformatiqueEntrepriseService {
  static List<InformatiqueEntrepriseModel> getAll() => [
    InformatiqueEntrepriseModel(
      title: 'Gestion de Parc Informatique',
      description: 'Suivi et maintenance de vos équipements informatiques',
      icon: 'computer',
    ),
    InformatiqueEntrepriseModel(
      title: 'Support Technique',
      description: 'Assistance et dépannage pour vos utilisateurs',
      icon: 'support_agent',
    ),
    InformatiqueEntrepriseModel(
      title: 'Infrastructure Réseau',
      description: 'Conception et maintenance de votre réseau d\'entreprise',
      icon: 'router',
    ),
    InformatiqueEntrepriseModel(
      title: 'Systèmes de Communication',
      description: 'Solutions de téléphonie et communication unifiée',
      icon: 'phone',
    ),
  ];

  static List<AdvantageItem> getAdvantages() => [
    AdvantageItem(
      icon: CupertinoIcons.checkmark_shield,
      title: 'Support 24/7',
      description:
          'Assistance technique disponible à tout moment pour résoudre vos problèmes rapidement.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.chart_bar_alt_fill,
      title: 'Performance Optimale',
      description:
          'Infrastructure performante et sécurisée pour maximiser votre productivité.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.money_dollar_circle,
      title: 'Coûts Maîtrisés',
      description:
          'Réduction des coûts IT grâce à une gestion optimisée et préventive.',
    ),
    AdvantageItem(
      icon: CupertinoIcons.arrow_up_right_square,
      title: 'Évolutivité',
      description:
          'Infrastructure adaptable qui grandit avec votre entreprise.',
    ),
  ];

  static List<ProjectItem> getProjects() => [
    ProjectItem(
      title: 'Migration Infrastructure',
      description:
          'Migration complète de 150 postes vers Windows 11 et Office 365.',
      imagePlaceholder: 'migration',
    ),
    ProjectItem(
      title: 'Support PME',
      description:
          'Mise en place support informatique multi-sites pour groupe de 300 utilisateurs.',
      imagePlaceholder: 'support',
    ),
    ProjectItem(
      title: 'Réseau Entreprise',
      description:
          'Déploiement infrastructure réseau sécurisée avec WiFi entreprise et VPN.',
      imagePlaceholder: 'network',
    ),
  ];
}
