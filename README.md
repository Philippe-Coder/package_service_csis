#  CSIS Services Packages

[![Flutter](https://img.shields.io/badge/Flutter-3.9.2+-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.9.2+-0175C2?logo=dart)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

Collection de packages Flutter modulaires pour l'application CSIS (Compagnie de Services en Informatique et Sécurité). Chaque package représente un service métier avec ses pages, modèles, widgets et logique métier.

##  Table des Matières

- [Packages Disponibles](#-packages-disponibles)
- [Architecture](#-architecture)
- [Installation](#-installation)
- [Utilisation](#-utilisation)
- [Structure des Packages](#-structure-des-packages)
- [Assets & Ressources](#-assets--ressources)
- [Contribution](#-contribution)
- [Changelog](#-changelog)

---

##  Packages Disponibles

Ce repository contient **6 packages Flutter** indépendants mais cohérents :

### 1.  Informatique d'Entreprise (`informatique_entreprise`)
**Version:** 0.0.1

Gestion complète de l'infrastructure IT d'entreprise.

**Fonctionnalités:**
- Gestion de parc informatique
- Support technique 24/7
- Infrastructure réseau
- Systèmes de communication

**Services inclus:**
- `InformatiqueEntrepriseService` - Logique métier et données
- `InformatiqueEntreprisePage` - Page de détail du service
- Widgets personnalisés (header, avantages, projets, bouton devis)

---

### 2.  Opérations d'Infrastructure (`operations_infrastructure`)
**Version:** 0.0.1

Monitoring, maintenance et gestion de serveurs.

**Fonctionnalités:**
- Monitoring & Supervision 24/7
- Gestion des serveurs
- Sauvegarde & Récupération
- Optimisation des performances

**Services inclus:**
- `OperationInfrastructureService` - Données et projets
- `OperationsInfrastructurePage` - Interface utilisateur
- Haute disponibilité (99.9% uptime)

---

### 3.  Cloud Computing (`cloud_computing`)
**Version:** 0.0.1

Solutions cloud complètes (AWS, Azure, GCP).

**Fonctionnalités:**
- Migration cloud
- Infrastructure as a Service (IaaS)
- Platform as a Service (PaaS)
- Cloud hybride

**Services inclus:**
- `CloudComputingService` - Gestion multi-cloud
- `CloudComputingPage` - Présentation des solutions
- Scalabilité illimitée et optimisation des coûts

---

### 4.  Transformation Digitale (`transformation_digitale`)
**Version:** 0.0.1

Accompagnement de la transformation numérique.

**Fonctionnalités:**
- Stratégie digitale
- Automatisation des processus
- Intelligence Artificielle
- Data Analytics

**Services inclus:**
- `TransformationDigitaleService` - Stratégies et projets
- `TransformationDigitalePage` - Showcase des transformations
- Formation et conduite du changement

---

### 5.  Développement de Logiciels (`developpement_de_logiciels`)
**Version:** 0.0.1

Conception et développement de solutions sur mesure.

**Fonctionnalités:**
- Applications Web (React, Angular, Vue.js)
- Applications Mobiles (iOS, Android, Flutter)
- Logiciels sur mesure
- APIs & Microservices

**Services inclus:**
- `DeveloppementLogicielService` - Portfolio de projets
- `DeveloppementLogicielsPage` - Vitrine des réalisations
- Méthode Agile et qualité garantie

---

### 6.  Cybersécurité (`cybersecurity`)
**Version:** 0.0.1

Protection complète contre les menaces cybernétiques.

**Fonctionnalités:**
- Audit de sécurité
- Pare-feu & Protection
- Gestion des accès (IAM)
- Formation sécurité

**Services inclus:**
- `CybersecurityService` - SOC et audits
- `CybersecuritePage` - Présentation des solutions
- Conformité RGPD, ISO 27001

---

##  Architecture

Chaque package suit une architecture modulaire et réutilisable :

```
package_name/
├── lib/
│   ├── package_name.dart          # Point d'entrée du package
│   └── src/
│       ├── models/                # Modèles de données
│       │   └── *_model.dart
│       ├── pages/                 # Pages Flutter
│       │   └── *_page.dart
│       ├── services/              # Logique métier
│       │   └── *_service.dart
│       └── widgets/               # Widgets réutilisables
│           ├── service_detail_header.dart
│           ├── advantages_section.dart
│           ├── projects_section.dart
│           └── quote_button.dart
├── test/                          # Tests unitaires
├── pubspec.yaml                   # Dépendances
├── README.md                      # Documentation
├── CHANGELOG.md                   # Historique des versions
└── LICENSE                        # Licence MIT
```

---

##  Installation

### Méthode 1 : Via GitHub (Recommandé)

Ajoutez les packages directement depuis le dépôt GitHub dans votre `pubspec.yaml` :

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # Package Informatique d'Entreprise
  informatique_entreprise:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: informatique_entreprise 
      ref: main  # la branche 
  
  # Package Opérations d'Infrastructure
  operations_infrastructure:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: operations_infrastructure
      ref: main
  
  # Package Cloud Computing
  cloud_computing:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
      ref: main
  
  # Package Transformation Digitale
  transformation_digitale:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: transformation_digitale
      ref: main
  
  # Package Développement de Logiciels
  developpement_de_logiciels:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: developpement_de_logiciels
      ref: main
  
  # Package Cybersécurité
  cybersecurity:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cybersecurity
      ref: main
```

### Méthode 2 : Installation d'un seul package

Si vous n'avez besoin que d'un service spécifique :

```yaml
dependencies:
  cloud_computing:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
      ref: main
```

### Méthode 3 : Utilisation avec un tag de version

Pour une version stable spécifique :

```yaml
dependencies:
  cloud_computing:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
      ref: v0.0.1  # Remplacer par le tag souhaité
```

### Installation des dépendances

Après avoir modifié `pubspec.yaml`, exécutez :

```powershell
flutter pub get
```

---

##  Utilisation

### Import des packages

```dart
// Import d'un package spécifique
import 'package:cloud_computing/cloud_computing.dart';
import 'package:cybersecurity/cybersecurity.dart';
import 'package:developpement_de_logiciels/developpement_de_logiciels.dart';
import 'package:informatique_entreprise/informatique_entreprise.dart';
import 'package:operations_infrastructure/operations_infrastructure.dart';
import 'package:transformation_digitale/transformation_digitale.dart';
```

### Exemple 1 : Afficher une page de service

```dart
import 'package:flutter/material.dart';
import 'package:cloud_computing/cloud_computing.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Services CSIS')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CloudComputingPage(),
              ),
            );
          },
          child: Text('Découvrir Cloud Computing'),
        ),
      ),
    );
  }
}
```

### Exemple 2 : Récupérer les données d'un service

```dart
import 'package:cloud_computing/cloud_computing.dart';

void main() {
  // Récupérer la liste des services cloud
  final cloudServices = CloudComputingService.getAll();
  
  // Récupérer les avantages
  final advantages = CloudComputingService.getAdvantages();
  
  // Récupérer les projets réalisés
  final projects = CloudComputingService.getProjects();
  
  // Afficher les données
  for (var service in cloudServices) {
    print('${service.title}: ${service.description}');
  }
}
```

### Exemple 3 : Utiliser les widgets personnalisés

```dart
import 'package:flutter/material.dart';
import 'package:cloud_computing/cloud_computing.dart';

class CustomServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final advantages = CloudComputingService.getAdvantages();
    final projects = CloudComputingService.getProjects();
    
    return Scaffold(
      appBar: AppBar(title: Text('Mon Service')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // Header personnalisé
            ServiceDetailHeader(
              title: 'Mon Service Cloud',
              description: 'Description personnalisée...',
              imagePlaceholder: 'cloud_header',
            ),
            
            SizedBox(height: 32),
            
            // Section des avantages
            AdvantagesSection(advantages: advantages),
            
            SizedBox(height: 32),
            
            // Section des projets
            ProjectsSection(projects: projects),
            
            SizedBox(height: 32),
            
            // Bouton devis
            QuoteButton(
              onPressed: () {
                print('Demande de devis');
              },
            ),
          ],
        ),
      ),
    );
  }
}
```

### Exemple 4 : Navigation complète entre services

```dart
import 'package:flutter/material.dart';
import 'package:cloud_computing/cloud_computing.dart';
import 'package:cybersecurity/cybersecurity.dart';
import 'package:developpement_de_logiciels/developpement_de_logiciels.dart';

class ServicesMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nos Services')),
      body: ListView(
        children: [
          _buildServiceTile(
            context,
            'Cloud Computing',
            'Solutions cloud complètes',
            Icons.cloud,
            CloudComputingPage(),
          ),
          _buildServiceTile(
            context,
            'Cybersécurité',
            'Protection contre les menaces',
            Icons.security,
            CybersecuritePage(),
          ),
          _buildServiceTile(
            context,
            'Développement Logiciels',
            'Applications sur mesure',
            Icons.code,
            DeveloppementLogicielsPage(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildServiceTile(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Widget page,
  ) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFF007AFF)),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
```

---

##  Structure des Packages

### Modèles de Données

Chaque package contient un modèle de données principal :

```dart
// Exemple: cloud_computing/lib/src/models/cloud_model.dart
class CloudComputingModel {
  final String title;
  final String description;
  final String icon;
  
  CloudComputingModel({
    required this.title,
    required this.description,
    required this.icon,
  });
}
```

### Services

Les services fournissent les données et la logique métier :

```dart
// Exemple: cloud_computing/lib/src/services/cloud_computing_service.dart
class CloudComputingService {
  // Liste des services
  static List<CloudComputingModel> getAll() { ... }
  
  // Avantages du service
  static List<AdvantageItem> getAdvantages() { ... }
  
  // Projets réalisés
  static List<ProjectItem> getProjects() { ... }
}
```

### Widgets Réutilisables

Chaque package inclut 4 widgets principaux :

1. **`ServiceDetailHeader`** - En-tête avec image et description
2. **`AdvantagesSection`** - Grille des avantages avec icônes
3. **`ProjectsSection`** - Carrousel des projets réalisés
4. **`QuoteButton`** - Bouton flottant pour demander un devis

---

##  Assets & Ressources

### Images Requises

Les packages nécessitent des images dans `assets/images/` :

**Images Header (6 images - 1 par service):**
- `InformatiqueEntreprise.jpg`
- `OperationInfrastructure.jpg`
- `cloud_computing.jpg`
- `TransformationDigitale.jpg`
- `DeveloppementLogiciels.jpg`
- `Cybersecurity.jpg`

**Images Projets (18 images - 3 par service):**
- Informatique: `it_project_1.jpg`, `it_project_2.jpg`, `it_project_3.jpg`
- Infrastructure: `infra_project_1.jpg`, `infra_project_2.jpg`, `infra_project_3.jpg`
- Cloud: `cloud_project_1.jpg`, `cloud_project_2.jpg`, `cloud_project_3.jpg`
- Transformation: `transformation_project_1.jpg`, etc.
- Développement: `dev_project_1.jpg`, etc.
- Cybersécurité: `security_project_1.jpg`, etc.

### Configuration Assets dans votre projet

Dans le `pubspec.yaml` de votre application principale :

```yaml
flutter:
  assets:
    - assets/images/
    - assets/videos/  # Optionnel
```

### Spécifications Images

- **Format:** JPG ou PNG
- **Résolution:** 1920x1080 (Full HD) recommandée
- **Taille:** Maximum 2 MB par image
- **Ratio:** 16:9 ou carré

---

##  Développement

### Prérequis

- Flutter SDK 3.9.2 ou supérieur
- Dart SDK 3.9.2 ou supérieur
- IDE : VS Code, Android Studio ou IntelliJ IDEA

### Structure du Repository

```
package_service_csis/
├── assets/
│   ├── images/              # Images des services
│   ├── videos/              # Vidéos démo (optionnel)
│   └── INSTRUCTIONS.md      # Guide des assets
├── cloud_computing/         # Package Cloud Computing
├── cybersecurity/           # Package Cybersécurité
├── developpement_de_logiciels/  # Package Développement
├── informatique_entreprise/     # Package IT Entreprise
├── operations_infrastructure/   # Package Opérations
├── transformation_digitale/     # Package Transformation
└── README.md                # Ce fichier
```

### Commandes Utiles

```powershell
# Installation des dépendances pour tous les packages
cd cloud_computing && flutter pub get
cd ../cybersecurity && flutter pub get
cd ../developpement_de_logiciels && flutter pub get
cd ../informatique_entreprise && flutter pub get
cd ../operations_infrastructure && flutter pub get
cd ../transformation_digitale && flutter pub get

# Analyser le code
flutter analyze

# Formater le code
flutter format .

# Lancer les tests
flutter test

# Nettoyer le cache
flutter clean
```

---

##  Cas d'Usage

### Cas 1 : Application Multi-Services CSIS

Créez une application complète avec tous les services :

```yaml
# pubspec.yaml
dependencies:
  informatique_entreprise:
    git: 
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: informatique_entreprise
  
  operations_infrastructure:
    git: 
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: operations_infrastructure
  
  # ... autres packages
```

### Cas 2 : Application Cloud uniquement

Si vous ne gérez que le Cloud Computing :

```yaml
# pubspec.yaml
dependencies:
  cloud_computing:
    git: 
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
```

### Cas 3 : Portfolio de Projets

Utilisez uniquement les services pour afficher des projets :

```dart
import 'package:cloud_computing/cloud_computing.dart';

final projects = CloudComputingService.getProjects();
// Affichez les projets dans votre UI personnalisée
```

---

##  Mise à Jour des Packages

### Mettre à jour un package depuis GitHub

```powershell
# Mettre à jour tous les packages
flutter pub upgrade

# Mettre à jour un package spécifique
flutter pub upgrade cloud_computing
```

### Utiliser une version spécifique

```yaml
dependencies:
  cloud_computing:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
      ref: v1.0.0  # Tag de version
```

### Utiliser une branche spécifique

```yaml
dependencies:
  cloud_computing:
    git:
      url: https://github.com/Philippe-Coder/package_service_csis.git
      path: cloud_computing
      ref: main  # Branche
```

---

##  Bonnes Pratiques

### 1. Versionnement

- Utilisez des tags Git pour les versions stables
- Suivez le [Semantic Versioning](https://semver.org/) (MAJOR.MINOR.PATCH)
- Maintenez un `CHANGELOG.md` à jour

### 2. Gestion des Assets

- Placez les assets dans le projet principal, pas dans les packages
- Utilisez des placeholders si les images sont manquantes
- Optimisez les images avant de les ajouter

### 3. Tests

- Écrivez des tests unitaires pour les services
- Testez les widgets avec `flutter test`
- Utilisez `flutter analyze` régulièrement

---

##  Résolution de Problèmes

### Problème : Package non trouvé

```powershell
# Vérifier la connexion GitHub
git ls-remote https://github.com/Philippe-Coder/package_service_csis.git

# Nettoyer et réinstaller
flutter clean
flutter pub get
```

### Problème : Conflits de dépendances

```powershell
# Forcer la résolution
flutter pub upgrade --major-versions
```

### Problème : Images non affichées

1. Vérifiez que les images sont dans `assets/images/`
2. Vérifiez `pubspec.yaml` de votre app principale :
   ```yaml
   flutter:
     assets:
       - assets/images/
   ```
3. Relancez l'app : `flutter run`

### Problème : Hot reload ne fonctionne pas

```powershell
# Redémarrer l'app
flutter run --hot
```

---

##  Contribution

Les contributions sont les bienvenues ! Voici comment contribuer :

### 1. Fork le Repository

```powershell
git clone https://github.com/Philippe-Coder/package_service_csis.git
cd package_service_csis
```

### 2. Créer une Branche

```powershell
git checkout -b feature/nouvelle-fonctionnalite
```

### 3. Faire vos Modifications

- Respectez l'architecture existante
- Ajoutez des tests si nécessaire
- Mettez à jour la documentation

### 4. Commit et Push

```powershell
git add .
git commit -m "feat: ajout de [fonctionnalité]"
git push origin feature/nouvelle-fonctionnalite
```

### 5. Créer une Pull Request

- Décrivez vos modifications
- Référencez les issues liées
- Attendez la review

---

##  License

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
