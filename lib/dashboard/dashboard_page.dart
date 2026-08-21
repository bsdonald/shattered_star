import 'package:flutter/material.dart';

import '../auth/login_page.dart';
import '../services/firebase/firebase_auth_service.dart';
import '../services/models/demo_data.dart';
import 'widgets/campaign_tile.dart';
import 'widgets/character_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  Future<void> logout(BuildContext context) async {
    try {
      await FirebaseAuthService().signOut();
    } catch (_) {
      if (context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const LoginPage(demoMode: true)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
          actions: [
            IconButton(
              onPressed: () => logout(context),
              tooltip: 'Sign out',
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 36),
          children: [
            Text(
              'Your campaigns',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: campaigns.length,
                separatorBuilder: (_, index) => const SizedBox(width: 12),
                itemBuilder: (_, index) =>
                    CampaignTile(campaign: campaigns[index]),
              ),
            ),
            const SizedBox(height: 34),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your characters',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                  '${characters.length} total',
                  style: TextStyle(color: Colors.white.withValues(alpha: .55)),
                ),
              ],
            ),
            const SizedBox(height: 14),
            ...characters.map(
              (character) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: CharacterTile(character: character),
              ),
            ),
          ],
        ),
      );
}
