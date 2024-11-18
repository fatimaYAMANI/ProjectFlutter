
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text Area
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bienvenue !',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Explorez les fonctionnalités de notre application et restez informé.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // "Informations essentielles" Section Title
            const Text(
              'Informations essentielles',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Cards Grid
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildCard(
                  context,
                  title: 'Login',
                  subtitle: 'Connectez-vous',
                  icon: Icons.login,
                  color: Color(0xFF012E40),
                  onTap: () {
                    // Handle login action
                  },
                ),
                _buildCard(
                  context,
                  title: 'Profil',
                  subtitle: 'Accéder et modifier votre profil',
                  icon: Icons.person,
                  color: Color(0xFF024959),
                  onTap: () {
                    // Handle profile action
                  },
                ),
                _buildCard(
                  context,
                  title: 'Carte',
                  subtitle: 'Localiser les ressources',
                  icon: Icons.map,
                  color: Color(0xFF026773),
                  onTap: () {
                    // Handle map action
                  },
                ),
                _buildCard(
                  context,
                  title: 'Autres',
                  subtitle: 'Selon vos intérêts',
                  icon: Icons.list,
                  color: Color(0xFF3CA6A6),
                  onTap: () {
                    // Handle other actions
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            // "Conseils et Astuces" Section Title
            const Text(
              'Conseils et Astuces',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Advice Text
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'Voici quelques conseils importants pour rester en sécurité et informé.',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required String title, required String subtitle, required IconData icon, required Color color, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}