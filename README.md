# Avoir un PC à l'ENSEA : configuration et installation logiciel
## 🧑‍💻 Préparer ton PC pour la rentrée
Il est demandé à chaque étudiant de configurer son ordinateur portable dès le début de l’année, afin de pouvoir travailler efficacement en autonomie sur les projets de développement, de CAO, et de virtualisation.

Pas d’inquiétude : nous serons là pour t’aider. Des créneaux de support seront organisés à l’école, avec des étudiants expérimentés et des enseignants disponibles pour t’accompagner, que ce soit pour l’installation d’Ubuntu, la configuration du dual boot, ou l’installation des outils nécessaires.

## Rentrée Septembre 2025

### 🖥️ Configuration minimale recommandée

| Composant               | Spécification recommandée                                                                                   |
|-------------------------|-------------------------------------------------------------------------------------------------------------|
| Processeur (CPU)        | Intel Core i5 (11e génération ou plus) ou AMD Ryzen 5 (5000+) x86-64 uniquement (processeur ARM à éviter)   |
| Mémoire vive (RAM)      | 32 Go recommandé, 16 Go minimum                                                                             |
| Stockage (SSD)          | 1 To NVMe SSD (ou 512 Go minimum si peu de VMs)                                                             |
| Carte graphique (GPU)   | GPU intégré (Intel Iris Xe ou AMD Radeon) ou NVIDIA (support Linux)                                         |
| Écran                   | Full HD (1920x1080) minimum, 13" recommandé                                                                 |
| Connectique             | USB-C, HDMI, Ethernet ou adaptateur                                                                         |
| Système d'exploitation  | Linux (Ubuntu 24.04 LTS) en simple ou dual boot (à côté de windows par exemple)                             |

### ✅ Pourquoi Ubuntu 24.04 LTS ?
- Large compatibilité logicielle (STM32CubeIDE, VSCode, IntelliJ, KiCad, Docker, etc.).
- Support à long terme (5 ans), idéal pour une station de travail stable.
- Performances optimisées pour le développement, la virtualisation, et la compilation.
- Excellente communauté et documentation pour le dépannage.


### ⚠️ À éviter : MacBook avec processeur ARM, Chromebook et autres architectures non x86
Même si certains outils comme STM32CubeIDE sont compatibles ARM, les MacBooks avec puces M1/M2/M3 (ARM) posent encore de nombreux problèmes :
* ❌ Plusieurs logiciels métiers sont disponibles uniquement en x86-64.
* ❌ La virtualisation de systèmes x86 sur ARM reste complexe et limitée.
* ❌ Compatibilité matérielle plus difficile à gérer.
De même, les Chromebooks, tablettes ou PC ARM sont fortement déconseillés, car ils ne permettent pas d’installer ni d’exécuter confortablement les outils requis.

### 💻 Choix du PC : recommandations
Ce qui compte avant tout, c’est d’avoir un PC portable avec un processeur x86-64, suffisamment de mémoire vive, et un bon support Linux.

Marques et modèles connus pour bien fonctionner sous Ubuntu :
* Lenovo ThinkPad (série T ou P)
* Dell XPS ou Precision
* HP EliteBook ou ZBook
* Framework Laptop (modulaire et parfaitement compatible Ubuntu)

Tips : tu n'as pas besoin d'avoir un PC neuf, pour moins de 500€ tu peux trouver de très bonne occasion de 2nde main.

### 🧰 Logiciels à installer
Voici une liste de logiciels que tu devras probablement installer sous Ubuntu 24.04 (script d'installation):
* Développement
    * VSCode
    * STM32CubeIDE
    * IntelliJ
    * PyCharm
    * Git
    * Docker
    * VirtualBox
    * Python 3
    * Rpi Imager
    * Wireshark, net-tools
    * KiCad
* CAO/ELectronique
    * LTSpice
    * Onshape
    * Octave
* Outils complémentaires
    * FileZilla
    * LibreOffice
    * LaTeX
    * Minicom
    * VLC

### 🤝 Support à l’école
Ne t’inquiète pas si tu rencontres des difficultés à installer ou configurer ton environnement : des créneaux de support technique seront proposés à l’école, encadrés par des étudiants expérimentés et des enseignants. 

Tu pourras y venir avec ton ordinateur pour être aidé dans l'installation d’Ubuntu, la configuration du dual boot, ou l'installation des outils de développement et de CAO. 
Ces moments sont aussi l’occasion d’échanger de bonnes pratiques.
